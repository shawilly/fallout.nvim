-- Lualine theme for Fallout.nvim

local c = require("fallout.palette").colors

return {
  normal = {
    a = { fg = c.bg, bg = c.green, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  insert = {
    a = { fg = c.bg, bg = c.rust, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  visual = {
    a = { fg = c.bg, bg = c.purple, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  replace = {
    a = { fg = c.bg, bg = c.red, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  command = {
    a = { fg = c.bg, bg = c.yellow, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg, bg = c.bg_dark },
  },
  inactive = {
    a = { fg = c.comment, bg = c.bg_dark, gui = "bold" },
    b = { fg = c.comment, bg = c.bg_dark },
    c = { fg = c.comment, bg = c.bg_dark },
  },
}
