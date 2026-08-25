-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  statusline = {
    modules = {
      lsp = function()
        if rawget(vim, "lsp") then
          local utils = require "nvchad.stl.utils"
          for _, client in ipairs(vim.lsp.get_clients()) do
            if client.name ~= "copilot" and client.attached_buffers[utils.stbufnr()] then
              return (vim.o.columns > 100 and "%#St_Lsp#   LSP ~ " .. client.name .. " ") or "%#St_Lsp#   LSP "
            end
          end
        end
        return ""
      end,
    },
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
