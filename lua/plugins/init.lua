return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
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
            accept = "<M-y>",      -- Alt + l to accept suggestion
            accept_word = "<M-w>",
            accept_line = "M-l",
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
