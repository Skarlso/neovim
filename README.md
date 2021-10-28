# Requirements

Following shit needs to be installed.

- neovim
- https://github.com/BurntSushi/ripgrep
- lua


## Install packer

```zsh
git clone https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Initial setup

```text
:PackerSync

" or

:PackerInstall
:PackerCompile
```

## Update

```text
:PackerSync
```

## Quicktype

```
npm install -g quicktype
```

## Troubleshooting

Overwrite `~/.config/coc/extensions/coc-lua-data/sumneko-lua-ls` with the latest version downloaded from Github on OSX.
