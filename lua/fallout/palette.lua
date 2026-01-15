-- Fallout colorscheme palette
-- Inspired by the post-apocalyptic world of Fallout
-- Featuring Pip-Boy green phosphor, wasteland browns, and Vault-Tec aesthetics

local M = {}

M.colors = {
  -- Base backgrounds (Wasteland night/bunker)
  bg = "#0d0f0c",           -- Deep dark green-black
  bg_dark = "#080a07",      -- Darker variant
  bg_highlight = "#1a1e17", -- Slightly lighter for highlights
  bg_visual = "#2a3324",    -- Visual selection

  -- Foregrounds (Pip-Boy terminal green)
  fg = "#4afa4a",           -- Classic Pip-Boy green
  fg_dark = "#39c939",      -- Slightly dimmed green
  fg_gutter = "#2d5a2d",    -- Line numbers, subtle

  -- Terminal phosphor greens
  green = "#4afa4a",        -- Primary Pip-Boy green
  green_bright = "#7fff7f", -- Bright phosphor
  green_dim = "#2d8a2d",    -- Dim phosphor
  green_dark = "#1a5a1a",   -- Very dim

  -- Wasteland colors
  rust = "#c47443",         -- Rust/corroded metal
  rust_dark = "#8b4513",    -- Darker rust
  sand = "#d4a574",         -- Desert sand
  brown = "#8b7355",        -- Wasteland dirt
  brown_dark = "#5c4a3a",   -- Dark earth

  -- Nuka-Cola and danger
  red = "#ff4444",          -- Nuka-Cola red / errors
  red_dark = "#b33030",     -- Darker red
  orange = "#ff8c00",       -- Warning orange
  yellow = "#ffd700",       -- Radiation yellow

  -- Vault-Tec colors
  blue = "#4a9afa",         -- Vault-Tec blue
  blue_dark = "#2d5a8a",    -- Darker vault blue
  cyan = "#00ced1",         -- Terminal cyan accent

  -- Special
  purple = "#9a7acf",       -- Rare/legendary items
  magenta = "#d670a0",      -- Special highlights
  white = "#c0c0c0",        -- Faded white
  black = "#000000",        -- Pure black

  -- UI specific
  border = "#3a5a3a",       -- Border color
  comment = "#5a7a5a",      -- Comments (dim green)
  selection = "#2a4a2a",    -- Selection background
  cursorline = "#151a12",   -- Cursor line background
  pmenu = "#131813",        -- Popup menu background
  pmenu_sel = "#2a4a2a",    -- Popup menu selection

  -- Diff colors
  diff_add = "#1a3a1a",
  diff_delete = "#3a1a1a",
  diff_change = "#2a3a1a",
  diff_text = "#3a5a2a",

  -- Git colors
  git_add = "#4afa4a",
  git_delete = "#ff4444",
  git_change = "#ff8c00",

  -- Diagnostic colors
  error = "#ff4444",
  warning = "#ff8c00",
  info = "#4a9afa",
  hint = "#39c939",
}

-- Terminal colors (16 ANSI colors)
M.terminal = {
  M.colors.bg,           -- black
  M.colors.red,          -- red
  M.colors.green,        -- green
  M.colors.yellow,       -- yellow
  M.colors.blue,         -- blue
  M.colors.purple,       -- magenta
  M.colors.cyan,         -- cyan
  M.colors.fg,           -- white
  M.colors.comment,      -- bright black
  M.colors.red,          -- bright red
  M.colors.green_bright, -- bright green
  M.colors.orange,       -- bright yellow
  M.colors.blue,         -- bright blue
  M.colors.magenta,      -- bright magenta
  M.colors.cyan,         -- bright cyan
  M.colors.white,        -- bright white
}

return M
