-- Fallout.nvim highlight definitions

local M = {}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(c, config)
  local transparent = config.transparent
  local styles = config.styles

  -- Helper for conditional transparency
  local bg = transparent and "NONE" or c.bg
  local bg_dark = transparent and "NONE" or c.bg_dark
  local bg_highlight = transparent and "NONE" or c.bg_highlight

  -----------------------------------------------------------------------------
  -- Editor highlights
  -----------------------------------------------------------------------------
  set_hl("Normal", { fg = c.fg, bg = bg })
  set_hl("NormalNC", { fg = c.fg, bg = bg })
  set_hl("NormalFloat", { fg = c.fg, bg = c.pmenu })
  set_hl("FloatBorder", { fg = c.border, bg = c.pmenu })
  set_hl("FloatTitle", { fg = c.green_bright, bg = c.pmenu, bold = true })
  set_hl("Cursor", { fg = c.bg, bg = c.fg })
  set_hl("CursorIM", { fg = c.bg, bg = c.fg })
  set_hl("CursorLine", { bg = c.cursorline })
  set_hl("CursorLineNr", { fg = c.green_bright, bold = true })
  set_hl("CursorColumn", { bg = c.cursorline })
  set_hl("ColorColumn", { bg = c.bg_highlight })
  set_hl("LineNr", { fg = c.fg_gutter })
  set_hl("SignColumn", { fg = c.fg_gutter, bg = bg })
  set_hl("FoldColumn", { fg = c.fg_gutter, bg = bg })
  set_hl("Folded", { fg = c.comment, bg = c.bg_highlight })
  set_hl("VertSplit", { fg = c.border })
  set_hl("WinSeparator", { fg = c.border })
  set_hl("Title", { fg = c.green_bright, bold = true })
  set_hl("Visual", { bg = c.bg_visual })
  set_hl("VisualNOS", { bg = c.bg_visual })
  set_hl("Search", { fg = c.bg, bg = c.yellow })
  set_hl("IncSearch", { fg = c.bg, bg = c.orange })
  set_hl("CurSearch", { fg = c.bg, bg = c.orange })
  set_hl("Substitute", { fg = c.bg, bg = c.red })
  set_hl("MatchParen", { fg = c.green_bright, bg = c.bg_visual, bold = true })
  set_hl("ModeMsg", { fg = c.fg, bold = true })
  set_hl("MsgArea", { fg = c.fg })
  set_hl("MoreMsg", { fg = c.green })
  set_hl("Question", { fg = c.blue })
  set_hl("WarningMsg", { fg = c.warning })
  set_hl("ErrorMsg", { fg = c.error })
  set_hl("NonText", { fg = c.green_dark })
  set_hl("SpecialKey", { fg = c.green_dark })
  set_hl("Whitespace", { fg = c.green_dark })
  set_hl("EndOfBuffer", { fg = c.bg })
  set_hl("Directory", { fg = c.green })
  set_hl("Conceal", { fg = c.comment })
  set_hl("SpellBad", { sp = c.error, undercurl = true })
  set_hl("SpellCap", { sp = c.warning, undercurl = true })
  set_hl("SpellLocal", { sp = c.info, undercurl = true })
  set_hl("SpellRare", { sp = c.hint, undercurl = true })
  set_hl("StatusLine", { fg = c.fg, bg = c.bg_highlight })
  set_hl("StatusLineNC", { fg = c.comment, bg = c.bg_dark })
  set_hl("TabLine", { fg = c.comment, bg = c.bg_dark })
  set_hl("TabLineFill", { bg = c.bg_dark })
  set_hl("TabLineSel", { fg = c.green_bright, bg = c.bg })
  set_hl("WinBar", { fg = c.fg, bg = bg })
  set_hl("WinBarNC", { fg = c.comment, bg = bg })
  set_hl("WildMenu", { fg = c.bg, bg = c.green })

  -- Popup menu
  set_hl("Pmenu", { fg = c.fg, bg = c.pmenu })
  set_hl("PmenuSel", { fg = c.green_bright, bg = c.pmenu_sel })
  set_hl("PmenuSbar", { bg = c.bg_highlight })
  set_hl("PmenuThumb", { bg = c.green_dim })

  -----------------------------------------------------------------------------
  -- Syntax highlights
  -----------------------------------------------------------------------------
  set_hl("Comment", vim.tbl_extend("force", { fg = c.comment }, styles.comments))
  set_hl("Constant", { fg = c.sand })
  set_hl("String", { fg = c.rust })
  set_hl("Character", { fg = c.rust })
  set_hl("Number", { fg = c.yellow })
  set_hl("Boolean", { fg = c.orange })
  set_hl("Float", { fg = c.yellow })
  set_hl("Identifier", { fg = c.fg })
  set_hl("Function", vim.tbl_extend("force", { fg = c.green_bright }, styles.functions))
  set_hl("Statement", { fg = c.green })
  set_hl("Conditional", vim.tbl_extend("force", { fg = c.green }, styles.keywords))
  set_hl("Repeat", vim.tbl_extend("force", { fg = c.green }, styles.keywords))
  set_hl("Label", { fg = c.blue })
  set_hl("Operator", { fg = c.fg_dark })
  set_hl("Keyword", vim.tbl_extend("force", { fg = c.green }, styles.keywords))
  set_hl("Exception", { fg = c.red })
  set_hl("PreProc", { fg = c.cyan })
  set_hl("Include", { fg = c.cyan })
  set_hl("Define", { fg = c.cyan })
  set_hl("Macro", { fg = c.cyan })
  set_hl("PreCondit", { fg = c.cyan })
  set_hl("Type", { fg = c.blue })
  set_hl("StorageClass", { fg = c.blue })
  set_hl("Structure", { fg = c.blue })
  set_hl("Typedef", { fg = c.blue })
  set_hl("Special", { fg = c.purple })
  set_hl("SpecialChar", { fg = c.purple })
  set_hl("Tag", { fg = c.green_bright })
  set_hl("Delimiter", { fg = c.fg_dark })
  set_hl("SpecialComment", { fg = c.comment, italic = true })
  set_hl("Debug", { fg = c.orange })
  set_hl("Underlined", { fg = c.blue, underline = true })
  set_hl("Ignore", { fg = c.bg })
  set_hl("Error", { fg = c.error })
  set_hl("Todo", { fg = c.bg, bg = c.yellow, bold = true })

  -----------------------------------------------------------------------------
  -- Diff highlights
  -----------------------------------------------------------------------------
  set_hl("DiffAdd", { bg = c.diff_add })
  set_hl("DiffChange", { bg = c.diff_change })
  set_hl("DiffDelete", { bg = c.diff_delete })
  set_hl("DiffText", { bg = c.diff_text })
  set_hl("diffAdded", { fg = c.git_add })
  set_hl("diffRemoved", { fg = c.git_delete })
  set_hl("diffChanged", { fg = c.git_change })
  set_hl("diffOldFile", { fg = c.rust })
  set_hl("diffNewFile", { fg = c.green })
  set_hl("diffFile", { fg = c.blue })
  set_hl("diffLine", { fg = c.comment })
  set_hl("diffIndexLine", { fg = c.purple })

  -----------------------------------------------------------------------------
  -- Treesitter highlights
  -----------------------------------------------------------------------------
  -- Identifiers
  set_hl("@variable", vim.tbl_extend("force", { fg = c.fg }, styles.variables))
  set_hl("@variable.builtin", { fg = c.rust })
  set_hl("@variable.parameter", { fg = c.sand })
  set_hl("@variable.member", { fg = c.fg })
  set_hl("@constant", { fg = c.sand })
  set_hl("@constant.builtin", { fg = c.orange })
  set_hl("@constant.macro", { fg = c.cyan })
  set_hl("@module", { fg = c.blue })
  set_hl("@module.builtin", { fg = c.blue })
  set_hl("@label", { fg = c.blue })

  -- Literals
  set_hl("@string", { fg = c.rust })
  set_hl("@string.documentation", { fg = c.comment })
  set_hl("@string.regexp", { fg = c.orange })
  set_hl("@string.escape", { fg = c.purple })
  set_hl("@string.special", { fg = c.purple })
  set_hl("@string.special.symbol", { fg = c.sand })
  set_hl("@string.special.url", { fg = c.blue, underline = true })
  set_hl("@character", { fg = c.rust })
  set_hl("@character.special", { fg = c.purple })
  set_hl("@boolean", { fg = c.orange })
  set_hl("@number", { fg = c.yellow })
  set_hl("@number.float", { fg = c.yellow })

  -- Types
  set_hl("@type", { fg = c.blue })
  set_hl("@type.builtin", { fg = c.blue })
  set_hl("@type.definition", { fg = c.blue })
  set_hl("@type.qualifier", { fg = c.green })
  set_hl("@attribute", { fg = c.cyan })
  set_hl("@property", { fg = c.fg })

  -- Functions
  set_hl("@function", vim.tbl_extend("force", { fg = c.green_bright }, styles.functions))
  set_hl("@function.builtin", { fg = c.green_bright })
  set_hl("@function.call", { fg = c.green_bright })
  set_hl("@function.macro", { fg = c.cyan })
  set_hl("@function.method", { fg = c.green_bright })
  set_hl("@function.method.call", { fg = c.green_bright })
  set_hl("@constructor", { fg = c.blue })

  -- Keywords
  set_hl("@keyword", vim.tbl_extend("force", { fg = c.green }, styles.keywords))
  set_hl("@keyword.coroutine", { fg = c.green })
  set_hl("@keyword.function", { fg = c.green })
  set_hl("@keyword.operator", { fg = c.fg_dark })
  set_hl("@keyword.import", { fg = c.cyan })
  set_hl("@keyword.storage", { fg = c.green })
  set_hl("@keyword.repeat", { fg = c.green })
  set_hl("@keyword.return", { fg = c.green })
  set_hl("@keyword.debug", { fg = c.orange })
  set_hl("@keyword.exception", { fg = c.red })
  set_hl("@keyword.conditional", { fg = c.green })
  set_hl("@keyword.conditional.ternary", { fg = c.fg_dark })
  set_hl("@keyword.directive", { fg = c.cyan })
  set_hl("@keyword.directive.define", { fg = c.cyan })

  -- Punctuation
  set_hl("@punctuation.delimiter", { fg = c.fg_dark })
  set_hl("@punctuation.bracket", { fg = c.fg_dark })
  set_hl("@punctuation.special", { fg = c.purple })

  -- Comments
  set_hl("@comment", vim.tbl_extend("force", { fg = c.comment }, styles.comments))
  set_hl("@comment.documentation", { fg = c.comment })
  set_hl("@comment.error", { fg = c.error })
  set_hl("@comment.warning", { fg = c.warning })
  set_hl("@comment.todo", { fg = c.bg, bg = c.yellow, bold = true })
  set_hl("@comment.note", { fg = c.bg, bg = c.info, bold = true })

  -- Markup
  set_hl("@markup.strong", { bold = true })
  set_hl("@markup.italic", { italic = true })
  set_hl("@markup.strikethrough", { strikethrough = true })
  set_hl("@markup.underline", { underline = true })
  set_hl("@markup.heading", { fg = c.green_bright, bold = true })
  set_hl("@markup.quote", { fg = c.comment, italic = true })
  set_hl("@markup.math", { fg = c.yellow })
  set_hl("@markup.environment", { fg = c.cyan })
  set_hl("@markup.link", { fg = c.blue })
  set_hl("@markup.link.label", { fg = c.blue })
  set_hl("@markup.link.url", { fg = c.blue, underline = true })
  set_hl("@markup.raw", { fg = c.rust })
  set_hl("@markup.raw.block", { fg = c.fg })
  set_hl("@markup.list", { fg = c.green })
  set_hl("@markup.list.checked", { fg = c.green_bright })
  set_hl("@markup.list.unchecked", { fg = c.comment })

  -- Tags (HTML/JSX)
  set_hl("@tag", { fg = c.green })
  set_hl("@tag.attribute", { fg = c.sand })
  set_hl("@tag.delimiter", { fg = c.fg_dark })

  -----------------------------------------------------------------------------
  -- LSP Semantic Tokens
  -----------------------------------------------------------------------------
  set_hl("@lsp.type.class", { fg = c.blue })
  set_hl("@lsp.type.comment", { fg = c.comment })
  set_hl("@lsp.type.decorator", { fg = c.cyan })
  set_hl("@lsp.type.enum", { fg = c.blue })
  set_hl("@lsp.type.enumMember", { fg = c.sand })
  set_hl("@lsp.type.function", { fg = c.green_bright })
  set_hl("@lsp.type.interface", { fg = c.blue })
  set_hl("@lsp.type.keyword", { fg = c.green })
  set_hl("@lsp.type.macro", { fg = c.cyan })
  set_hl("@lsp.type.method", { fg = c.green_bright })
  set_hl("@lsp.type.namespace", { fg = c.blue })
  set_hl("@lsp.type.number", { fg = c.yellow })
  set_hl("@lsp.type.operator", { fg = c.fg_dark })
  set_hl("@lsp.type.parameter", { fg = c.sand })
  set_hl("@lsp.type.property", { fg = c.fg })
  set_hl("@lsp.type.regexp", { fg = c.orange })
  set_hl("@lsp.type.string", { fg = c.rust })
  set_hl("@lsp.type.struct", { fg = c.blue })
  set_hl("@lsp.type.type", { fg = c.blue })
  set_hl("@lsp.type.typeParameter", { fg = c.blue })
  set_hl("@lsp.type.variable", { fg = c.fg })
  set_hl("@lsp.mod.deprecated", { strikethrough = true })
  set_hl("@lsp.mod.readonly", { italic = true })
  set_hl("@lsp.mod.defaultLibrary", { fg = c.rust })
  set_hl("@lsp.typemod.function.defaultLibrary", { fg = c.green_bright })
  set_hl("@lsp.typemod.variable.defaultLibrary", { fg = c.rust })

  -----------------------------------------------------------------------------
  -- Diagnostics
  -----------------------------------------------------------------------------
  set_hl("DiagnosticError", { fg = c.error })
  set_hl("DiagnosticWarn", { fg = c.warning })
  set_hl("DiagnosticInfo", { fg = c.info })
  set_hl("DiagnosticHint", { fg = c.hint })
  set_hl("DiagnosticOk", { fg = c.green })
  set_hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.diff_delete })
  set_hl("DiagnosticVirtualTextWarn", { fg = c.warning, bg = c.bg_highlight })
  set_hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg_highlight })
  set_hl("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_highlight })
  set_hl("DiagnosticUnderlineError", { sp = c.error, undercurl = true })
  set_hl("DiagnosticUnderlineWarn", { sp = c.warning, undercurl = true })
  set_hl("DiagnosticUnderlineInfo", { sp = c.info, undercurl = true })
  set_hl("DiagnosticUnderlineHint", { sp = c.hint, undercurl = true })
  set_hl("DiagnosticFloatingError", { fg = c.error })
  set_hl("DiagnosticFloatingWarn", { fg = c.warning })
  set_hl("DiagnosticFloatingInfo", { fg = c.info })
  set_hl("DiagnosticFloatingHint", { fg = c.hint })
  set_hl("DiagnosticSignError", { fg = c.error })
  set_hl("DiagnosticSignWarn", { fg = c.warning })
  set_hl("DiagnosticSignInfo", { fg = c.info })
  set_hl("DiagnosticSignHint", { fg = c.hint })

  -----------------------------------------------------------------------------
  -- LSP
  -----------------------------------------------------------------------------
  set_hl("LspReferenceText", { bg = c.bg_visual })
  set_hl("LspReferenceRead", { bg = c.bg_visual })
  set_hl("LspReferenceWrite", { bg = c.bg_visual })
  set_hl("LspSignatureActiveParameter", { fg = c.green_bright, bold = true })
  set_hl("LspCodeLens", { fg = c.comment })
  set_hl("LspCodeLensSeparator", { fg = c.comment })
  set_hl("LspInlayHint", { fg = c.comment, bg = c.bg_highlight })

  -- Load plugin highlights
  require("fallout.plugins").setup(c, config)
end

return M
