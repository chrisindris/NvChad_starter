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
4. mv $HOME/.local/state/nvim/shada/main.shada.tmp.m $HOME/.local/state/nvim/shada/main.shada

## Clear existing configs and caches
1. rm -rf ~/.local/share/nvim/lazy
2. rm -rf ~/.local/state/nvim

## Put the following into ~/.bashrc (and source ~/.bashrc)
module load nodejs rust clang go
export npm_config_cache="$HOME/.npm-cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export CARGO_BUILD_BUILD_DIR="/tmp/cargo-install"
export NVIM_NOTTYFAST=1
export PATH=$PATH:/home/.cargo/bin/
export PATH=$PATH:$HOME/nvim/bin/
export PATH=$PATH:$HOME/bin/
export PATH=$PATH:$HOME/bin/bin/
export PATH=$PATH:/project/def-wangcs/$USER/bin/
export PATH=$PATH:$HOME/go/bin/

## Get RipGrep
1. cd $HOME/bin/
2. wget https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep-15.1.0-aarch64-unknown-linux-gnu.tar.gz
3. tar -xzvf ripgrep-15.1.0-aarch64-unknown-linux-gnu.tar.gz
4. chmod +x ripgrep-15.1.0-aarch64-unknown-linux-gnu/complete/rg.bash

## Get Tree-Sitter
1. cargo install tree-sitter-cli --root /project/def-wangcs/$USER/

## Non-Neovim, but still useful (any subset of the following acceptable to install):

### Codex
1. Install Codex CLI on AllianceCan: `curl -fsSL https://chatgpt.com/codex/install.sh | sh` 
2. Log in via option 2 (device code); ensure that device code authorization is enabled in your account

### Grok Build
1. Install Grok Build on AllianceCan: `curl -fsSL https://x.ai/cli/install.sh | bash`
2. Run "agent" and follow instructions

### shfmt
1. go install mvdan.cc/sh/v3/cmd/shfmt@v3.7.0
2. pushd ~/.config/nvim/
3. git submodule add https://github.com/z0mbix/vim-shfmt.git
   (`lua/plugins/init.lua` loads this local submodule so both `plugin/` and `autoload/` are on the runtimepath. Do not `ln -s vim-shfmt/plugin/ plugin` — that only registers `:Shfmt` and then fails with `E117: Unknown function: shfmt#shfmt`.)

### LazyGit
1. pushd /project/aip-wangcs/$USER/
2. git clone https://github.com/jesseduffield/lazygit.git && pushd lazygit
3. go build -x -v -o ../bin/

## Complete Install
1. git clone https://github.com/chrisindris/NvChad_starter ~/.config/nvim
2. git clone --depth=1 https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim
3. nvim
4. :MasonInstall ast-grep bash-debug-adapter bash-language-server black css-lsp debugpy html-lsp local-lua-debugger-vscode lua-language-server pylint pyright shellharden stylua
5. :TSInstallAll
6. :Copilot auth
