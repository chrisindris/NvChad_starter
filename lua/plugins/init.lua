return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "html-lsp",
        "css-lsp",
        "lua-language-server",
      },
    },
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
   "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          hide_during_completion = true,
          debounce = 75,
          keymap = {
            accept = "<M-y>",      -- Alt + y to accept suggestion
            accept_word = "<M-w>",
            accept_line = "<M-l>",
            next = "<M-]>",       -- Alt + ] for next suggestion
            prev = "<M-[>",       -- Alt + [ for previous suggestion
            dismiss = "<C-]>",     -- Ctrl + ] to dismiss
          },
        },
        panel = { enabled = true },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    -- The config function runs AFTER the plugin is loaded into memory
    config = function()
      -- Now it is safe to require it!
      require('nvim-treesitter').install({ 'c', 'lua', 'python', 'javascript', 'rust' })
    end,
  },

  -- Local submodule: plugin/ + autoload/ must both be on rtp.
  -- A lone ~/.config/nvim/plugin symlink only sources the command,
  -- which then fails with E117: Unknown function: shfmt#shfmt.
  {
    "z0mbix/vim-shfmt",
    dir = vim.fn.stdpath("config") .. "/vim-shfmt",
    cmd = "Shfmt",
    ft = "sh",
  },

  -- nvim v0.8.0
  {
      "kdheepak/lazygit.nvim",
      lazy = true,
      cmd = {
          "LazyGit",
          "LazyGitConfig",
          "LazyGitCurrentFile",
          "LazyGitFilter",
          "LazyGitFilterCurrentFile",
      },
      -- optional for floating window border decoration
      dependencies = {
          "nvim-lua/plenary.nvim",
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {
          { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
  }

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
