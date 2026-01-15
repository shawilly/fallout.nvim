# fallout.nvim

A post-apocalyptic Neovim colorscheme inspired by the Fallout game series. Features the iconic Pip-Boy green phosphor terminal aesthetic with wasteland browns, rust, and Vault-Tec colors.

## Features

- Pip-Boy green phosphor terminal colors
- Full Treesitter support
- LSP semantic token highlighting
- Extensive plugin support for LazyVim and popular Neovim plugins
- Lualine theme included
- Transparent background option

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yourusername/fallout.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("fallout").setup(opts)
    vim.cmd.colorscheme("fallout")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yourusername/fallout.nvim",
  config = function()
    require("fallout").setup()
    vim.cmd.colorscheme("fallout")
  end,
}
```

## Configuration

Default options:

```lua
require("fallout").setup({
  transparent = false,      -- Enable transparent background
  terminal_colors = true,   -- Set terminal colors
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
})
```

## Lualine

The theme includes a lualine theme. Configure it like this:

```lua
require("lualine").setup({
  options = {
    theme = "fallout",
  },
})
```

## Supported Plugins

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Which-key](https://github.com/folke/which-key.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [Dashboard](https://github.com/nvimdev/dashboard-nvim)
- [Alpha](https://github.com/goolord/alpha-nvim)
- [Trouble](https://github.com/folke/trouble.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [Aerial](https://github.com/stevearc/aerial.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [Snacks.nvim](https://github.com/folke/snacks.nvim)

## Color Palette

| Color           | Hex       | Usage                              |
|-----------------|-----------|-----------------------------------|
| Pip-Boy Green   | `#4afa4a` | Primary foreground, functions     |
| Green Bright    | `#7fff7f` | Highlights, selected items        |
| Rust            | `#c47443` | Strings, insert mode              |
| Sand            | `#d4a574` | Constants, parameters             |
| Vault-Tec Blue  | `#4a9afa` | Types, info                       |
| Nuka-Cola Red   | `#ff4444` | Errors, delete                    |
| Radiation Yellow| `#ffd700` | Numbers, warnings, search         |
| Purple          | `#9a7acf` | Special, rare items               |

## License

MIT
