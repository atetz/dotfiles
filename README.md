# Bootstrap dev computer with chezmoi
This repo contains a simple way to bootstrap a new computer with [chezmoi](www.chezmoi.io). 

## MacOS steps
1. Install xcode 
`sudo xcode-select --install`
2. Install homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. Install chezmoi and my dotfiles with one single command:
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --verbose atetz`
