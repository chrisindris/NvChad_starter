**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!


# Install on AllianceCan

## Install base Neovim
1. cd ~
2. git clone https://github.com/neovim/neovim.git
3. make CMAKE_INSTALL_PREFIX=/project/def-wangcs/$USER/nvim CMAKE_BUILD_TYPE=Release
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

## Get RipGrep
1. cd /home/$USER/bin/
2. wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.26.10/tree-sitter-cli-linux-x64.zip
3. tar -xzvf ripgrep-15.1.0-aarch64-unknown-linux-gnu.tar.gz
4. chmod +x ripgrep-15.1.0-aarch64-unknown-linux-gnu/complete/rg.bash

## Get Tree-Sitter
1. cargo install tree-sitter-cli --root /project/def-wangcs/$USER/bin/i


## Get Copilot
1. git clone --depth=1 https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim


## Non-Neovim, but still useful (any subset of the following acceptable to install):

### Codex
1. Install Codex CLI on AllianceCan: `curl -fsSL https://chatgpt.com/codex/install.sh | sh` 
2. Log in via option 2 (device code); ensure that device code authorization is enabled in your account

### Grok Build
1. Install Grok Build on AllianceCan: `curl -fsSL https://chatgpt.com/codex/install.sh | sh`
2. Run "agent" and follow instructions

## Complete Install
1. git clone https://github.com/chrisindris/NvChad_starter ~/.config/nvim && nvim
2. :MasonInstallAll
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
3. :TSInstallAll
4. :Copilot auth
