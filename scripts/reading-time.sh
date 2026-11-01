#!/usr/bin/env bash
# Write or check the reading-time badge of the org profile, in both languages: computed, never by hand.
# The method is marola's (marola-tools reading-time). It counts the words a person reads, without code,
# comments, images, tags and URLs; a link keeps its text. The speed is Brysbaert (2019), Journal of Memory
# and Language 109, 104047: 238 words per minute in English, 181 in Portuguese. A code block adds 15 seconds.
# The result is rounded up to whole minutes.
#   reading-time.sh --write    rewrite each badge line
#   reading-time.sh --check    exit 1 when a badge is missing or stale
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
mode="${1:-}"
case "$mode" in --write|--check) ;; *) echo "usage: reading-time.sh --write|--check" >&2; exit 2 ;; esac
export MODE="$mode"
perl -CSD -Mutf8 -e '
  use POSIX qw(ceil);
  my $mode = $ENV{MODE}; my $bad = 0;
  my @files = (["profile/README.md", 238, "reading time", "reading%20time", "#reading-time"],
               ["profile/README.pt-BR.md", 181, "tempo de leitura", "tempo%20de%20leitura", "#tempo-de-leitura"]);
  for my $f (@files) {
    my ($path, $wpm, $alt, $label, $anchor) = @$f;
    open(my $in, "<", $path) or die "$path: $!"; local $/; my $text = <$in>; close $in;
    my $p = $text; my $blocks = 0;
    $blocks++ while $p =~ s/^```.*?^```[ \t]*$//ms;
    $p =~ s/<!--.*?-->/ /gs; $p =~ s/!\[[^\]]*\]\([^)]*\)/ /g; $p =~ s/\[([^\]]*)\]\([^)]*\)/$1/g;
    $p =~ s/<[^>\n]+>/ /g; $p =~ s{https?://\S+}{ }g;
    my $words = grep { /[\p{L}\p{N}]/ } split " ", $p;
    my $min = ceil($words / $wpm + $blocks * 0.25); $min = 1 if $min < 1;
    my $line = "[![$alt: ~$min min](https://img.shields.io/badge/$label-~$min%20min-1682D4?style=flat-square)]($anchor)";
    my $re = qr/^\[!\[\Q$alt\E: [^\n]*$/m;
    if ($mode eq "--write") {
      $text =~ s/$re/$line/ or die "$path: no badge line\n";
      open(my $out, ">", $path) or die "$path: $!"; print $out $text; close $out;
      print "$path: $words words, ~$min min\n";
    } elsif ($text !~ /^\Q$line\E$/m) {
      print STDERR "reading-time: $path is stale, want ~$min min; run just reading-time\n"; $bad = 1;
    } else { print "$path: ~$min min\n"; }
  }
  exit $bad;
'
