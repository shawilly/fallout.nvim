-- Fallout.nvim - A post-apocalyptic Neovim colorscheme
-- Inspired by the Fallout game series

local M = {}

M.config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "fallout"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local highlights = require("fallout.highlights")
  local palette = require("fallout.palette")

  -- Apply all highlight groups
  highlights.setup(palette.colors, M.config)

  -- Set terminal colors
  if M.config.terminal_colors then
    for i, color in ipairs(palette.terminal) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end
end

return M
