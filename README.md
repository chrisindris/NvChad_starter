**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!


# Install on AllianceCan

## Prereqs
1. If you are using iTerm on your local, it is best to set at least one option key to "Esc+".

## Install base Neovim
1. cd ~
2. git clone https://github.com/neovim/neovim.git && cd neovim
3. make CMAKE_INSTALL_PREFIX=/project/def-wangcs/$USER/ CMAKE_BUILD_TYPE=Release install
4. mv /home/$USER/.local/state/nvim/shada/main.shada.tmp.m /home/$USER/.local/state/nvim/shada/main.shada

## Clear existing configs and caches
1. rm -rf ~/.local/share/nvim/lazy
2. rm -rf ~/.local/state/nvim

## Put the following into ~/.bashrc (and source ~/.bashrc)
module load nodejs rust clang
export npm_config_cache="/home/$USER/.npm-cache"
export XDG_CONFIG_HOME="/home/$USER/.config"
export XDG_DATA_HOME="/home/$USER/.local/share"
export XDG_STATE_HOME="/home/$USER/.local/state"
export XDG_CACHE_HOME="/home/$USER/.cache"
export CARGO_BUILD_BUILD_DIR="/tmp/cargo-install"
export NVIM_NOTTYFAST=1
export PATH=$PATH:/home/.cargo/bin/
export PATH=$PATH:/home/$USER/nvim/bin/
export PATH=$PATH:/home/$USER/bin/
export PATH=$PATH:/home/$USER/bin/bin/
export PATH=$PATH:/project/def-wangcs/$USER/bin/

## Get RipGrep
1. cd /home/$USER/bin/
2. wget https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep-15.1.0-aarch64-unknown-linux-gnu.tar.gz
3. tar -xzvf ripgrep-15.1.0-aarch64-unknown-linux-gnu.tar.gz
4. chmod +x ripgrep-15.1.0-aarch64-unknown-linux-gnu/complete/rg.bash

## Get Tree-Sitter
1. cargo install tree-sitter-cli --root /project/def-wangcs/$USER/bin/

## Non-Neovim, but still useful (any subset of the following acceptable to install):

### Codex
1. Install Codex CLI on AllianceCan: `curl -fsSL https://chatgpt.com/codex/install.sh | sh` 
2. Log in via option 2 (device code); ensure that device code authorization is enabled in your account

### Grok Build
1. Install Grok Build on AllianceCan: `curl -fsSL https://x.ai/cli/install.sh | bash`
2. Run "agent" and follow instructions

## shfmt
### Put the following into ~/.bashrc (and source ~/.bashrc)
module load go
export PATH=$PATH:/home/$USER/go/bin/
### Install a compatible version of shfmt
go install mvdan.cc/sh/v3/cmd/shfmt@v3.7.0

## Complete Install
1. git clone https://github.com/chrisindris/NvChad_starter ~/.config/nvim
2. git clone --depth=1 https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim
3. nvim
4. :MasonInstallAll
Install the following:
      ast-grep
      bash-debug-adapter
      bash-language-server
      black
      css-lsp
      debugpy
      html-lsp
      local-lua-debugger-vscode
      lua-language-server
      pylint
      pyright
      shellharden
      stylua
5. :TSInstallAll
6. :Copilot auth
