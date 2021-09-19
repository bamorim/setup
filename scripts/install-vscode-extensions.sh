#!/bin/sh

EXTENSIONS=(
  # Language Support
  alexkrechik.cucumberautocomplete
  bbenoist.vagrant
  bungcip.better-toml
  golang.go
  GraphQL.vscode-graphql
  hashicorp.terraform
  JakeBecker.elixir-ls
  James-Yu.latex-workshop
  mikestead.dotenv
  ms-python.python
  pgourlain.erlang
  rebornix.ruby
  redhat.vscode-yaml
  rust-lang.rust
  zxh404.vscode-proto3

  # JS & TS
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  octref.vetur
  Prisma.prisma
  silvenon.mdx
  wix.glean
  xyc.vscode-mdx-preview

  # Live Share & Collab
  karigari.chat
  ms-vsliveshare.vsliveshare-pack

  # Git & GitHub
  eamodio.gitlens
  GitHub.vscode-pull-request-github
  letmaik.git-tree-compare
  sidneys1.gitconfig
  vsls-contrib.gistfs

  # .NET, F#, C#
  fernandoescolar.vscode-solution-explorer
  Ionide.Ionide-FAKE
  Ionide.Ionide-fsharp
  leo-labs.dotnet
  ms-dotnettools.csharp

  # Docker & Kubernetes
  ms-azuretools.vscode-docker
  ms-kubernetes-tools.vscode-kubernetes-tools

  # Templating Languages
  andrejunges.handlebars
  cjamesmay.plush
  karunamurti.tera
  ouven.vscode-yab-for-eex-leex
  samuelcolvin.jinjahtml
  sianglim.slim

  # CSS & co
  bradlc.vscode-tailwindcss
  mrmlnc.vscode-scss
  ricard.postcss
  syler.sass-indented

  # Docs: md, org, graphviz, etc...
  bierner.markdown-mermaid
  bpruitt-goddard.mermaid-markdown-syntax-highlighting
  jebbs.plantuml
  joaompinto.vscode-graphviz
  tintinweb.graphviz-interactive-preview
  tootone.org-mode
  yzane.markdown-pdf
  yzhang.markdown-all-in-one

  # Inline Mutation Helpers
  adamhartford.vscode-base64
  bibhasdn.unique-lines
  flesler.url-encode
  stkb.rewrap
  wmaurer.change-case

  # Themes
  ahmadawais.shades-of-purple
  dracula-theme.theme-dracula
  Equinusocio.vsc-community-material-theme
  Equinusocio.vsc-material-theme
  equinusocio.vsc-material-theme-icons
  github.github-vscode-theme
  liviuschera.noctis
  monokai.theme-monokai-pro-vscode
  PKief.material-icon-theme
  zhuangtongfa.material-theme

  # Others
  alexcvzz.vscode-sqlite
  CoenraadS.bracket-pair-colorizer-2
  cssho.vscode-svgviewer
  dotjoshjohnson.xml
  firefox-devtools.vscode-firefox-debug
  henoc.svgeditor
  humao.rest-client
  jlcs-es.x509-parser
  johnpapa.vscode-peacock
  jspolancor.presentationmode
  marcelovelasquez.flutter-tree
  marp-team.marp-vscode
  ms-vscode-remote.vscode-remote-extensionpack
  mushan.vscode-paste-image
  sleistner.vscode-fileutils
)

INSTALLED_EXTENSIONS=$(code --list-extensions)

for extension in "${EXTENSIONS[@]}"; do
  if ! grep -q "^$extension$" <<< "$INSTALLED_EXTENSIONS"; then
    code --install-extension $extension
  fi
done
