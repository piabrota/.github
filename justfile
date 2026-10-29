# The org profile (profile/README.md) and its figures. Runs on Ubuntu 24.04's apt `just` (1.21).
# The figure recipes follow h0ffmann/pirsig's: archify sources in profile/archify/, PNGs in profile/img/.

# List the recipes
default:
    @just --list

# Check out the pinned archify (piabrota/archify, sparse to archify/)
figure-init:
    git submodule update --init --depth 1 vendor/archify
    git -C vendor/archify sparse-checkout set --no-cone /archify/
    @echo "figure-init: $(git -C vendor/archify rev-parse --short HEAD)"

# Archify validates and checks each source (finalize), piabrota's look (profile/archify/piabrota.css)
# goes over it, headless Chrome takes the picture. Needs node, jq, perl, Chrome (CHROME names another)
# and the Google Fonts; writes profile/archify/figures.lock.
# Draw every profile/archify/<slug>.json to profile/img/<slug>.png
figure: figure-init
    #!/usr/bin/env bash
    set -euo pipefail
    mkdir -p build/figure profile/img
    for src in profile/archify/*.json; do
        slug="$(basename "$src" .json)"; out="build/figure/$slug"
        rm -rf "$out"; mkdir -p "$out"
        ARCHIFY_UPDATE_CHECK_DISABLED=1 node vendor/archify/archify/bin/archify.mjs finalize "$(jq -r .diagram_type "$src")" "$src" "$out/page.html" --out-dir "$out/receipts" --quality "$(jq -r '.meta.quality_profile // "showcase"' "$src")"
        read -r w h < <(grep -o '<svg viewBox="[^"]*"' "$out/page.html" | head -1 | sed -E 's/.*0 0 ([0-9.]+) ([0-9.]+)"/\1 \2/')
        crop="$(awk -F'\t' -v s="$slug" '$1==s {print $2}' profile/archify/crop.tsv)"; h="${crop:-$h}"
        FONTS='<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Fjalla+One&family=Inter:wght@400;600&display=block">' CSS="$(cat profile/archify/piabrota.css)" W="$w" H="$h" \
            perl -0pe 's|</head>|$ENV{FONTS}<style>$ENV{CSS}</style></head>|; s|<svg viewBox="0 0 [0-9.]+ [0-9.]+"|<svg viewBox="0 0 $ENV{W} $ENV{H}"|' "$out/page.html" > "$out/frame.html"
        "${CHROME:-google-chrome}" --headless --disable-gpu --hide-scrollbars --force-dark-mode --force-device-scale-factor=2 --user-data-dir="$PWD/$out/profile" --window-size="$w,$h" --virtual-time-budget=3000 --screenshot="$PWD/profile/img/$slug.png" "file://$PWD/$out/frame.html" 2>/dev/null
        echo "figure: profile/img/$slug.png"
    done
    just _figure-lock > profile/archify/figures.lock

_figure-lock:
    #!/usr/bin/env bash
    set -euo pipefail
    pin="$(git ls-files -s vendor/archify | cut -d' ' -f2)"
    for src in profile/archify/*.json; do
        printf '%s\t%s\n' "$(basename "$src" .json)" "$(cat "$src" profile/archify/piabrota.css profile/archify/crop.tsv | sha256sum | cut -c1-16)-${pin:0:7}"
    done

# Cheap and offline: every source has its PNG, profile/README.md shows it, both match the last `just figure`
figure-check:
    #!/usr/bin/env bash
    set -euo pipefail
    for src in profile/archify/*.json; do
        s="$(basename "$src" .json)"
        test -s "profile/img/$s.png" || { echo "figure-check: no PNG for $src; run just figure" >&2; exit 1; }
        grep -qF "](img/$s.png)" profile/README.md || { echo "figure-check: profile/README.md does not show img/$s.png" >&2; exit 1; }
    done
    just _figure-lock | cmp -s - profile/archify/figures.lock || { echo "figure-check: a source, the look or the archify pin changed since the PNG; run just figure" >&2; exit 1; }
    echo "figure-check: ok"
