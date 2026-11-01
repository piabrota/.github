<div align="center">

# pia, brota

<sub>Fábrica de software aberto feita no RJ · <a href="#em-um-minuto">em um minuto</a> · <a href="#por-que-é-aberto">por que é aberto</a> · <a href="#projetos">projetos</a> · <a href="#como-se-encaixa">como se encaixa</a> · <a href="#equipe">equipe</a> · <a href="#parcerias">parcerias</a> · <a href="#licença">licença</a> · <a href="https://github.com/piabrota">🇬🇧 English</a></sub>

[![feito no: Rio de Janeiro](https://img.shields.io/badge/feito%20no-Rio%20de%20Janeiro-BC2318?style=flat-square)](#em-um-minuto)
[![código: FOSS](https://img.shields.io/badge/c%C3%B3digo-FOSS-1682D4?style=flat-square)](#licença)
[![rust](https://img.shields.io/badge/rust-primeiro-1682D4?style=flat-square&logo=rust&logoColor=white)](#projetos)
[![web: piabrota.art](https://img.shields.io/badge/web-piabrota.art-1682D4?style=flat-square)](https://piabrota.art)
[![tempo de leitura: ~6 min](https://img.shields.io/badge/tempo%20de%20leitura-~6%20min-1682D4?style=flat-square)](#tempo-de-leitura)

</div>

## Em um minuto

- **piabrota é uma fábrica de software aberto, feita no Rio de Janeiro.** Cada projeto é um
  repositório próprio, com README, licença e testes próprios. O código é aberto, e o método também.
- **Todo projeto é FOSS.** A maioria usa a Mozilla Public License 2.0. O texto do livro usa CC BY 4.0,
  e o código do livro usa AGPL-3.0.
- **Os READMEs seguem uma disciplina:** um desenho no topo, uma linha de links, "em um minuto" e
  figuras desenhadas com [archify](https://github.com/piabrota/archify) a partir de uma fonte
  verificada. Cada figura tem um cartão que diz como ler a figura.
- **O domínio da org é [piabrota.art](https://piabrota.art).** Os projetos chegam ao domínio um
  caminho por vez.

## Por que é aberto

- **Leia, use e construa o seu.** Você pode ter as suas próprias ideias lendo ou usando os
  repositórios do piabrota. Os repositórios são documentação viva e prova do trabalho humano nos
  bastidores. Com eles, outras pessoas podem construir o próprio projeto.
- **Feito com Claude Code, a caminho do FOSS.** O Claude Code constrói os projetos do piabrota na
  maior parte do tempo. Mesmo assim, mantemos um esforço permanente para tornar a plataforma
  piabrota [F]OSS.
- **Uma filosofia, não só uma economia.** A otimização de tokens e os modelos abertos, no Ollama e no
  Ollaya, são a nossa forma de construir software aberto sobre software aberto, da forma mais agêntica
  e acessível possível.

## Projetos

| | Projeto | O que é | Site | Licença |
|:---:|---|---|---|---|
| <img alt="無, mu, brushed in twelve strokes from Desmos equations" src="https://raw.githubusercontent.com/piabrota/pirsig/b7dd1da2ac886845b14bb90e5d8d34976cfc95cb/docs/drawings/pirsig.svg" width="64"/> | [**pirsig**](https://github.com/piabrota/pirsig) | Um segundo cérebro: PARA e um slip-box Zettelkasten no mesmo lugar. Um app em Rust com app de desktop, API REST e uma CLI de terminal, `psg`, sobre uma camada de modelo. | ainda não (piabrota.art/pirsig, em breve) | MPL-2.0 |
| <img alt="A large G, like the one of the square and compasses, in the colours of the flag of Brazil" src="https://raw.githubusercontent.com/piabrota/gramatico/436743495515d0f6104dfbbcb1ef08eaaae8b4f5/site/static/favicon.svg" width="64"/> | [**gramatico**](https://github.com/piabrota/gramatico) | Reescreve texto técnico em português brasileiro para leitura única: sujeito explícito, uma proposição por frase. É um plugin do Claude Code. O plugin marca com `⚠` o que não checou. | [piabrota.github.io/gramatico](https://piabrota.github.io/gramatico/) | MPL-2.0 |
| <img alt="A Fibonacci wave and a bell, in one line" src="https://raw.githubusercontent.com/piabrota/alerts/10d996d47c4a8c6bc4076f826bc274da3f8a5561/docs/drawings/wave.svg" width="64"/> | [**alerts**](https://github.com/piabrota/alerts) | Uma plataforma genérica de alertas. A plataforma coleta alertas só de fontes oficiais e entrega os alertas ao Discord e a um feed Atom com CAP 1.2. O primeiro risco coberto é o de enchentes no Sul do Brasil. | ainda não (piabrota.art/alerts, em breve) | MPL-2.0 |
| <img alt="代理, dairi, an agent, brushed in sixteen strokes among stars, inside an orbit" src="https://raw.githubusercontent.com/piabrota/rax/a1c99e147db88902db52e92aa86fe47d06e6e8c7/docs/drawings/cosmos.svg" width="64"/> | [**rax**](https://github.com/piabrota/rax) | Rustic Agentic Runtime: um port em Rust puro do AX, o orquestrador declarativo de tarefas agênticas sobre o Agent Substrate. O rax mantém a API do AX, então um manifesto escrito para o AX funciona aqui. | nenhum | MPL-2.0, partes do AX em Apache-2.0 |
| <img alt="An open letter c with a dot, on a dark square" src="https://raw.githubusercontent.com/h0ffmann/closed-source/6b3aae557f69ab89ec747364311978928dd0ca71/site/static/icons/favicon.svg" width="64"/> | [**closed-source**](https://github.com/h0ffmann/closed-source) | *The god that failed*: um livro sobre por que o código fechado falhou como proteção, a começar pela ciência. Entra Markdown, sai PDF, toda referência é checada e toda versão é citável. | [h0ffmann.github.io/closed-source](https://h0ffmann.github.io/closed-source/) | texto CC BY 4.0, código AGPL-3.0 |
| 🎶 | [**ihero**](https://github.com/piabrota/ihero) | Um player de música e jogo FOSS, em Rust. Em breve: o repositório só tem a licença. | ainda não | MPL-2.0 |
| <img alt="无, mu, brushed in four strokes from Desmos equations" src="https://raw.githubusercontent.com/piabrota/nix-os/191a284035bef85ea828ff75cc729b4f045b10f1/docs/drawings/mu.svg" width="64"/> | [**nix-os**](https://github.com/piabrota/nix-os) | A configuração NixOS da pequena VPS que serve piabrota.art/nixos. Cada mudança é julgada pelo que adiciona à closure e à memória. | [piabrota.art/nixos](https://piabrota.art/nixos) | MPL-2.0 |
| 🤖 | [**agents**](https://github.com/piabrota/agents) | Agentes pequenos que vigiam o nix-os e a VPS, e relatam no GitHub como piabrota-ops. Os agentes abrem pull requests e nunca fazem merge. | nenhum | MPL-2.0 |
| <img alt="む, mu, brushed in its three strokes, in pure Nix" src="https://raw.githubusercontent.com/piabrota/mu/960984b928062b5cf043001e072322df51f106fa/docs/drawings/mu.svg" width="64"/> | [**mu**](https://github.com/piabrota/mu) | O chart da empresa: o dogma, os padrões, o diário e o índice dos repositórios da org. | nenhum | CC BY 4.0, AGPL-3.0, MPL-2.0 |
| 道場 | [**dojo**](https://github.com/piabrota/dojo) | O umbrella e a camada comum: cada repositório é um submódulo aqui. | ainda não | MPL-2.0 |

Os desenhos carregam do repositório de cada projeto, em um commit fixado. Nenhum desenho é copiado
para cá. ihero, agents e dojo ainda não têm desenho.

## Como se encaixa

![A fábrica piabrota em cinco faixas: o dojo é a camada comum, recebe as regras do mu e fixa cada repositório; pirsig, gramatico e closed-source pensam e escrevem; alerts, rax, nix-os e agents alertam e hospedam; ihero toca; alerts serve piabrota.art/alerts, nix-os serve piabrota.art/nixos, e pirsig vai chegar a piabrota.art/pirsig.](img/pt/fabric.png)

<details open>
<summary>Como ler esta figura</summary>

**Em uma frase.** São dez projetos abertos, cada um por conta própria. O dojo é a camada comum que fixa todos eles, e três deles chegam à web em piabrota.art.

**Como ler.** A faixa de cima é a camada comum, e cada outra faixa é um tipo de trabalho. Abaixo dela, uma
seta significa "é servido em", e o rótulo da seta é o caminho. "Em breve" significa planejado, ainda não
publicado. Uma borda vermelha marca o dojo e o domínio.

**Fora da figura.** O site de cada projeto no GitHub Pages e as ferramentas em comum: Nix, Rust e
archify.

**Evidência.** [`archify/pt/fabric.json`](archify/pt/fabric.json) é a fonte da figura. Os caminhos vêm
de `docs/HOSPEDAGEM.md` do alerts (`/alerts`), de `AGENTS.md` do nix-os (`/nixos`) e do README do
pirsig, "Ways to run Pirsig" (`/pirsig`, em breve).

</details>

`just figure` desenha de novo com o archify fixado. `just figure-check` diz se o PNG está velho.

## Equipe

As pessoas que constroem o piabrota. Cada linha vem do perfil público da pessoa no GitHub.

| | Pessoa | Sobre |
|:---:|---|---|
| <img alt="O avatar de h0ffmann no GitHub" src="https://avatars.githubusercontent.com/h0ffmann?s=128" width="64"/> | [**@h0ffmann**](https://github.com/h0ffmann)<br/>Matheus Hoffmann | "water animal", em Florianópolis. Trabalha no pirsig, ptbr-writer, alerts e nix-os, escreve o closed-source e faz o [marola](https://marola.dev), o super app da água. As obras com DOI estão em [Como citar](#como-citar). |
| <img alt="O avatar de aracyla no GitHub" src="https://avatars.githubusercontent.com/aracyla?s=128" width="64"/> | [**@aracyla**](https://github.com/aracyla) | "General purpose developer currently focused on frontend development", no Brasil ([aracyla.xyz](https://aracyla.xyz)). Projetos pequenos em C para estudo: um Tetris e uma biblioteca de testes unitários. |
| <img alt="O avatar de robkler no GitHub" src="https://avatars.githubusercontent.com/robkler?s=128" width="64"/> | [**@robkler**](https://github.com/robkler)<br/>Rôb Klér Soares da Silva Júnior | "Senior Backend Engineer", no Rio de Janeiro: Go e JVM (Scala, Java), sistemas distribuídos, Kubernetes, AWS e GCP. Fez a extensão de navegador do [gramatico](https://github.com/piabrota/gramatico) (piabrota/gramatico#51) e é dono do código do gramatico com @h0ffmann. |

## Parcerias

Pedidos de parceria ou white label: mhoffmannfs [at] gmail.com.

Para financiar o trabalho: [Open Collective](https://opencollective.com/piabrota) ou
[GitHub Sponsors](https://github.com/sponsors/h0ffmann). Todo repositório da org mostra o botão
Sponsor ([`.github/FUNDING.yml`](../.github/FUNDING.yml)).

## Como citar

As obras com DOI, de Matheus Hoffmann:

- marola: [10.5281/zenodo.23224155](https://doi.org/10.5281/zenodo.23224155)
- ww3-gpu: [10.5281/zenodo.23221351](https://doi.org/10.5281/zenodo.23221351)
- picasso: [10.5281/zenodo.23311208](https://doi.org/10.5281/zenodo.23311208)
- closed source: [10.5281/zenodo.23333656](https://doi.org/10.5281/zenodo.23333656)
- marola-bench: [10.5281/zenodo.23352633](https://doi.org/10.5281/zenodo.23352633)
- nashkell, the open book: [10.5281/zenodo.23356739](https://doi.org/10.5281/zenodo.23356739)

## Tempo de leitura

As duas versões desta página mostram quanto tempo levam para ler. `just reading-time` faz a conta, como
faz o [marola](https://github.com/marola-dev/marola): as palavras que uma pessoa lê, a 238 palavras por
minuto em inglês e 181 em português (Brysbaert, 2019). O CI falha se um selo ficar velho.

## Licença

Este repositório usa a [Mozilla Public License 2.0](../LICENSE). Cada projeto tem a própria licença,
indicada na tabela acima. O nome e o logo PIABROTA são marcas da org e não estão sob essa licença.
