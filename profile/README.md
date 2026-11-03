<div align="center">

# pia, brota

<sub>Open Software Fabric made in RJ · <a href="#in-one-minute">in one minute</a> · <a href="#why-it-is-open">why it is open</a> · <a href="#projects">projects</a> · <a href="#how-it-fits">how it fits</a> · <a href="#board">board</a> · <a href="#partnerships">partnerships</a> · <a href="#license">license</a> · <a href="https://github.com/piabrota/.github/blob/main/profile/README.pt-BR.md">🇧🇷 português</a></sub>

[![made in: Rio de Janeiro](https://img.shields.io/badge/made%20in-Rio%20de%20Janeiro-BC2318?style=flat-square)](#in-one-minute)
[![code: FOSS](https://img.shields.io/badge/code-FOSS-1682D4?style=flat-square)](#license)
[![rust](https://img.shields.io/badge/rust-first-1682D4?style=flat-square&logo=rust&logoColor=white)](#projects)
[![web: piabrota.art](https://img.shields.io/badge/web-piabrota.art-1682D4?style=flat-square)](https://piabrota.art)
[![reading time: ~5 min](https://img.shields.io/badge/reading%20time-~5%20min-1682D4?style=flat-square)](#reading-time)

</div>

## In one minute

- **piabrota is an open software fabric, made in Rio de Janeiro.** Each project is its own
  repository, with its own README, licence and tests. The source is open, and so is the method.
- **Every project is FOSS.** Most are under the Mozilla Public License 2.0; the book's text is
  CC BY 4.0 and its code AGPL-3.0.
- **The READMEs share one discipline:** a drawing at the top, a line of links, "in one minute",
  and figures drawn from a checked source with [archify](https://github.com/piabrota/archify),
  each with a card that says how to read it.
- **The org's domain is [piabrota.art](https://piabrota.art).** Projects come to it one path at a
  time.

## Why it is open

- **Read it, use it, and build your own.** You can have your own ideas by reading or using piabrota's
  repositories. They are live documentation, and proof of the human work behind the scenes, so that
  others can build their own.
- **Built with Claude Code, on the way to FOSS.** Claude Code builds piabrota's projects most of the
  time, but we keep a permanent effort to make the piabrota platform [F]OSS.
- **A philosophy, not only a saving.** Token optimization and open-source models, on Ollama and
  Ollaya, are how we build open-source software on open-source software, as agentic and as affordable
  as possible.

## Projects

| | Project | What it is | Website | Licence |
|:---:|---|---|---|---|
| <img alt="無, mu, brushed in twelve strokes from Desmos equations" src="https://raw.githubusercontent.com/piabrota/pirsig/b7dd1da2ac886845b14bb90e5d8d34976cfc95cb/docs/drawings/pirsig.svg" width="64"/> | [**pirsig**](https://github.com/piabrota/pirsig) | A second brain: PARA and a Zettelkasten slip-box in one place. A Rust app with a desktop app, a REST API and a terminal CLI, `psg`, on one model layer. | none yet (piabrota.art/pirsig, coming) | MPL-2.0 |
| <img alt="A large G, like the one of the square and compasses, in the colours of the flag of Brazil" src="https://raw.githubusercontent.com/piabrota/gramatico/436743495515d0f6104dfbbcb1ef08eaaae8b4f5/site/static/favicon.svg" width="64"/> | [**gramatico**](https://github.com/piabrota/gramatico) | Rewrites technical text in Brazilian Portuguese so that it reads once: explicit subject, one proposition per sentence. A Claude Code plugin; it marks with `⚠` what it did not check. | [piabrota.github.io/gramatico](https://piabrota.github.io/gramatico/) | MPL-2.0 |
| <img alt="A Fibonacci wave and a bell, in one line" src="https://raw.githubusercontent.com/piabrota/alerts/10d996d47c4a8c6bc4076f826bc274da3f8a5561/docs/drawings/wave.svg" width="64"/> | [**alerts**](https://github.com/piabrota/alerts) | A generic alert platform. It collects alerts from official sources only, and delivers them to Discord and an Atom feed with CAP 1.2. The first hazard is floods in the south of Brazil. | none yet (piabrota.art/alerts, coming) | MPL-2.0 |
| <img alt="代理, dairi, an agent, brushed in sixteen strokes among stars, inside an orbit" src="https://raw.githubusercontent.com/piabrota/rax/a1c99e147db88902db52e92aa86fe47d06e6e8c7/docs/drawings/cosmos.svg" width="64"/> | [**rax**](https://github.com/piabrota/rax) | Rustic Agentic Runtime: a pure-Rust port of AX, the declarative orchestrator for agentic tasks on Agent Substrate. It keeps AX's API, so a manifest written for AX works here. | none | MPL-2.0, parts from AX Apache-2.0 |
| <img alt="An open letter c with a dot, on a dark square" src="https://raw.githubusercontent.com/h0ffmann/closed-source/6b3aae557f69ab89ec747364311978928dd0ca71/site/static/icons/favicon.svg" width="64"/> | [**closed-source**](https://github.com/h0ffmann/closed-source) | *The god that failed*: a book on why closed source failed as a protection, for science first. Markdown in, PDF out, every reference checked, every release citable. | [h0ffmann.github.io/closed-source](https://h0ffmann.github.io/closed-source/) | text CC BY 4.0, code AGPL-3.0 |
| 🎶 | [**ihero**](https://github.com/piabrota/ihero) | A FOSS music player and game, in Rust. Coming: the repository holds only its licence. | none yet | MPL-2.0 |
| <img alt="无, mu, brushed in four strokes from Desmos equations" src="https://raw.githubusercontent.com/piabrota/nix-os/191a284035bef85ea828ff75cc729b4f045b10f1/docs/drawings/mu.svg" width="64"/> | [**nix-os**](https://github.com/piabrota/nix-os) | The NixOS configuration of the small VPS that serves piabrota.art/nixos. Every change is judged by what it adds to the closure and to memory. | [piabrota.art/nixos](https://piabrota.art/nixos) | MPL-2.0 |
| 🤖 | [**agents**](https://github.com/piabrota/agents) | Small agents that watch nix-os and its VPS, and report on GitHub as piabrota-ops. They open pull requests and never merge. | none | MPL-2.0 |
| <img alt="む, mu, brushed in its three strokes, in pure Nix" src="https://raw.githubusercontent.com/piabrota/mu/960984b928062b5cf043001e072322df51f106fa/docs/drawings/mu.svg" width="64"/> | [**mu**](https://github.com/piabrota/mu) | The company chart: the dogma, the standards, the journal and the index of the org's repositories. | none | CC BY 4.0, AGPL-3.0, MPL-2.0 |
| 道場 | [**dojo**](https://github.com/piabrota/dojo) | The umbrella of the piabrota projects. Being set up. | none yet | MPL-2.0 |

The drawings load from each project's repository at a pinned commit; none is copied here. ihero,
agents and dojo have no drawing yet.

## How it fits

![The piabrota fabric in five lanes: mu and dojo hold the company; pirsig, gramatico and closed-source think and write; alerts, rax, nix-os and agents warn and host; ihero plays; alerts serves piabrota.art/alerts, nix-os serves piabrota.art/nixos, and pirsig comes to piabrota.art/pirsig.](img/fabric.png)

<details open>
<summary>How to read this figure</summary>

**Takeaway.** Ten open projects, each on its own; three of them meet the web at piabrota.art.

**How to read.** One lane per kind of work. An arrow means "is served at", and its label is the
path; "coming" means planned, not live. The red border marks the domain.

**Not shown.** Each project's own site on GitHub Pages, and the tools they share: Nix, Rust,
archify.

**Evidence.** [`archify/fabric.json`](archify/fabric.json), the source of the figure. The paths
come from alerts' `docs/HOSPEDAGEM.md` (`/alerts`), nix-os' `AGENTS.md` (`/nixos`) and pirsig's
README, "Ways to run Pirsig" (`/pirsig`, coming).

</details>

`just figure` draws it again with the pinned archify; `just figure-check` says whether the PNG is
stale.

## Board

The people who build piabrota. Each line comes from their public GitHub profile.

| | Developer | About |
|:---:|---|---|
| <img alt="The GitHub avatar of h0ffmann" src="https://avatars.githubusercontent.com/h0ffmann?s=128" width="64"/> | [**@h0ffmann**](https://github.com/h0ffmann)<br/>Matheus Hoffmann | "water animal", in Florianópolis. Works on pirsig, ptbr-writer, alerts and nix-os, writes closed-source, and makes [marola](https://marola.dev), the water super app. The works with a DOI are in [How to cite](#how-to-cite). |
| <img alt="The GitHub avatar of aracyla" src="https://avatars.githubusercontent.com/aracyla?s=128" width="64"/> | [**@aracyla**](https://github.com/aracyla) | "General purpose developer currently focused on frontend development", in Brazil ([aracyla.xyz](https://aracyla.xyz)). Small C projects to study: a Tetris and a unit-test library. |
| <img alt="The GitHub avatar of robkler" src="https://avatars.githubusercontent.com/robkler?s=128" width="64"/> | [**@robkler**](https://github.com/robkler)<br/>Rôb Klér Soares da Silva Júnior | "Senior Backend Engineer", in Rio de Janeiro: Go and the JVM (Scala, Java), distributed systems, Kubernetes, AWS and GCP. Made the browser extension of [gramatico](https://github.com/piabrota/gramatico) (piabrota/gramatico#51), and owns gramatico's code with @h0ffmann. |

Two more members are not people: they are GitHub Apps, the org's agents. Each one writes as a bot,
signs what it writes with the agent, the model and where it ran, and never merges: a person does.

| | Agent | Role |
|:---:|---|---|
| <img alt="The GitHub avatar of piabrota-ops" src="https://avatars.githubusercontent.com/in/5550661?s=128" width="64"/> | [**piabrota-ops**](https://github.com/apps/piabrota-ops) | The ops agent. Watches [nix-os](https://github.com/piabrota/nix-os) and its VPS, diagnoses a failed deploy, reviews pull requests, opens the weekly flake-update pull request and keeps the pt-BR and English mirrors in step. Code: [agents](https://github.com/piabrota/agents). |
| <img alt="The GitHub avatar of piabrota-hermes" src="https://avatars.githubusercontent.com/in/5598006?s=128" width="64"/> | [**piabrota-hermes**](https://github.com/apps/piabrota-hermes) | The assistant of the owner. Answers on Telegram and Discord, runs the scheduled jobs the owner sets up (watchers and digests) and, when asked, opens a pull request from a `hermes/*` branch. Runs on the nix-os VPS as [Hermes Agent](https://github.com/NousResearch/hermes-agent); [docs/HERMES.md](https://github.com/piabrota/nix-os/blob/main/docs/HERMES.md). |

## Partnerships

Partnership or white label requests: mhoffmannfs [at] gmail.com.

To fund the work: [Open Collective](https://opencollective.com/piabrota) or
[GitHub Sponsors](https://github.com/sponsors/h0ffmann). Every repository of the org shows the
Sponsor button ([`.github/FUNDING.yml`](../.github/FUNDING.yml)).

## How to cite

The works with a DOI, by Matheus Hoffmann:

- marola: [10.5281/zenodo.23224155](https://doi.org/10.5281/zenodo.23224155)
- ww3-gpu: [10.5281/zenodo.23221351](https://doi.org/10.5281/zenodo.23221351)
- picasso: [10.5281/zenodo.23311208](https://doi.org/10.5281/zenodo.23311208)
- closed source: [10.5281/zenodo.23333656](https://doi.org/10.5281/zenodo.23333656)
- marola-bench: [10.5281/zenodo.23352633](https://doi.org/10.5281/zenodo.23352633)
- nashkell, the open book: [10.5281/zenodo.23356739](https://doi.org/10.5281/zenodo.23356739)

## Reading time

Both versions of this page show how long they take to read. `just reading-time` computes it, as
[marola](https://github.com/marola-dev/marola) does: the words a person reads, at 238 words per minute
in English and 181 in Portuguese (Brysbaert, 2019). CI fails when a badge is stale.

## License

This repository is under the [Mozilla Public License 2.0](../LICENSE). Each project has its own
licence, named in the table above. The PIABROTA name and logo are the org's marks and are not
under that licence.
