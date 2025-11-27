-- Entropy Color Theme - Highlight Definitions

local M = {}

function M.setup(c)
  local theme = {}

  -- ==========================================================================
  -- Editor
  -- ==========================================================================
  theme.Normal = { fg = c.fg.primary, bg = c.bg.primary }
  theme.NormalFloat = { fg = c.fg.primary, bg = c.bg.elevated }
  theme.NormalNC = { fg = c.fg.primary, bg = c.bg.primary }
  theme.SignColumn = { fg = c.fg.secondary, bg = c.bg.primary }
  theme.EndOfBuffer = { fg = c.bg.secondary }
  theme.ColorColumn = { bg = c.bg.secondary }
  theme.Conceal = { fg = c.syntax.comment }
  theme.Cursor = { fg = c.bg.primary, bg = c.fg.primary }
  theme.lCursor = { fg = c.bg.primary, bg = c.fg.primary }
  theme.CursorIM = { fg = c.bg.primary, bg = c.fg.primary }
  theme.CursorColumn = { bg = c.bg.secondary }
  theme.CursorLine = { bg = c.bg.secondary }
  theme.Directory = { fg = c.syntax.func }
  theme.DiffAdd = { fg = c.ui.success, bg = c.bg.primary }
  theme.DiffChange = { fg = c.ui.warning, bg = c.bg.primary }
  theme.DiffDelete = { fg = c.ui.error, bg = c.bg.primary }
  theme.DiffText = { fg = c.ui.info, bg = c.bg.secondary }
  theme.ErrorMsg = { fg = c.ui.error }
  theme.VertSplit = { fg = c.border.default }
  theme.WinSeparator = { fg = c.border.default }
  theme.Folded = { fg = c.syntax.comment, bg = c.bg.secondary }
  theme.FoldColumn = { fg = c.syntax.comment, bg = c.bg.primary }
  theme.IncSearch = { fg = c.bg.primary, bg = c.ui.search }
  theme.Substitute = { fg = c.bg.primary, bg = c.ui.search }
  theme.LineNr = { fg = c.entropy3 }
  theme.CursorLineNr = { fg = c.fg.emphasized, bold = true }
  theme.MatchParen = { fg = c.ui.match, bold = true }
  theme.ModeMsg = { fg = c.fg.emphasized, bold = true }
  theme.MoreMsg = { fg = c.ui.info }
  theme.NonText = { fg = c.entropy3 }
  theme.Pmenu = { fg = c.fg.primary, bg = c.bg.elevated }
  theme.PmenuSel = { fg = c.fg.bright, bg = c.bg.selection, bold = true }
  theme.PmenuSbar = { bg = c.bg.elevated }
  theme.PmenuThumb = { bg = c.border.active }
  theme.Question = { fg = c.ui.info }
  theme.QuickFixLine = { fg = c.fg.bright, bg = c.bg.selection }
  theme.Search = { fg = c.bg.primary, bg = c.ui.search }
  theme.SpecialKey = { fg = c.entropy3 }
  theme.SpellBad = { sp = c.ui.error, undercurl = true }
  theme.SpellCap = { sp = c.ui.warning, undercurl = true }
  theme.SpellLocal = { sp = c.ui.info, undercurl = true }
  theme.SpellRare = { sp = c.ui.warning, undercurl = true }
  theme.StatusLine = { fg = c.fg.primary, bg = c.bg.secondary }
  theme.StatusLineNC = { fg = c.fg.secondary, bg = c.bg.secondary }
  theme.TabLine = { fg = c.fg.secondary, bg = c.bg.secondary }
  theme.TabLineFill = { bg = c.bg.secondary }
  theme.TabLineSel = { fg = c.fg.bright, bg = c.bg.primary }
  theme.Title = { fg = c.fg.emphasized, bold = true }
  theme.Visual = { bg = c.bg.selection }
  theme.VisualNOS = { bg = c.bg.selection }
  theme.WarningMsg = { fg = c.ui.warning }
  theme.Whitespace = { fg = c.entropy3 }
  theme.WildMenu = { fg = c.fg.bright, bg = c.bg.selection }

  -- ==========================================================================
  -- Syntax Highlighting
  -- ==========================================================================
  theme.Comment = { fg = c.syntax.comment, italic = true }
  theme.Constant = { fg = c.syntax.constant }
  theme.String = { fg = c.syntax.string }
  theme.Character = { fg = c.syntax.string }
  theme.Number = { fg = c.syntax.number }
  theme.Boolean = { fg = c.syntax.constant }
  theme.Float = { fg = c.syntax.number }
  theme.Identifier = { fg = c.syntax.variable }
  theme.Function = { fg = c.syntax.func }
  theme.Statement = { fg = c.syntax.keyword }
  theme.Conditional = { fg = c.syntax.keyword }
  theme.Repeat = { fg = c.syntax.keyword }
  theme.Label = { fg = c.syntax.keyword }
  theme.Operator = { fg = c.syntax.operator }
  theme.Keyword = { fg = c.syntax.keyword }
  theme.Exception = { fg = c.syntax.keyword }
  theme.PreProc = { fg = c.syntax.keyword }
  theme.Include = { fg = c.syntax.keyword }
  theme.Define = { fg = c.syntax.keyword }
  theme.Macro = { fg = c.syntax.keyword }
  theme.PreCondit = { fg = c.syntax.keyword }
  theme.Type = { fg = c.syntax.type }
  theme.StorageClass = { fg = c.syntax.keyword }
  theme.Structure = { fg = c.syntax.type }
  theme.Typedef = { fg = c.syntax.type }
  theme.Special = { fg = c.fg.emphasized }
  theme.SpecialChar = { fg = c.syntax.constant }
  theme.Tag = { fg = c.syntax.func }
  theme.Delimiter = { fg = c.fg.primary }
  theme.SpecialComment = { fg = c.syntax.comment, italic = true }
  theme.Debug = { fg = c.ui.error }
  theme.Underlined = { underline = true }
  theme.Ignore = { fg = c.syntax.comment }
  theme.Error = { fg = c.ui.error, bold = true }
  theme.Todo = { fg = c.ui.warning, bold = true }

  -- ==========================================================================
  -- Treesitter
  -- ==========================================================================
  theme["@variable"] = { fg = c.syntax.variable }
  theme["@variable.builtin"] = { fg = c.syntax.constant }
  theme["@variable.parameter"] = { fg = c.syntax.variable }
  theme["@variable.member"] = { fg = c.syntax.variable }

  theme["@constant"] = { fg = c.syntax.constant }
  theme["@constant.builtin"] = { fg = c.syntax.constant }
  theme["@constant.macro"] = { fg = c.syntax.constant }

  theme["@module"] = { fg = c.syntax.type }
  theme["@label"] = { fg = c.syntax.keyword }

  theme["@string"] = { fg = c.syntax.string }
  theme["@string.regex"] = { fg = c.syntax.string }
  theme["@string.escape"] = { fg = c.syntax.constant }
  theme["@character"] = { fg = c.syntax.string }
  theme["@number"] = { fg = c.syntax.number }
  theme["@boolean"] = { fg = c.syntax.constant }
  theme["@float"] = { fg = c.syntax.number }

  theme["@function"] = { fg = c.syntax.func }
  theme["@function.builtin"] = { fg = c.syntax.func }
  theme["@function.macro"] = { fg = c.syntax.func }
  theme["@function.method"] = { fg = c.syntax.func }

  theme["@constructor"] = { fg = c.syntax.type }
  theme["@operator"] = { fg = c.syntax.operator }

  theme["@keyword"] = { fg = c.syntax.keyword }
  theme["@keyword.function"] = { fg = c.syntax.keyword }
  theme["@keyword.operator"] = { fg = c.syntax.operator }
  theme["@keyword.return"] = { fg = c.syntax.keyword }
  theme["@keyword.conditional"] = { fg = c.syntax.keyword }
  theme["@keyword.repeat"] = { fg = c.syntax.keyword }
  theme["@keyword.import"] = { fg = c.syntax.keyword }
  theme["@keyword.exception"] = { fg = c.syntax.keyword }

  theme["@type"] = { fg = c.syntax.type }
  theme["@type.builtin"] = { fg = c.syntax.type }
  theme["@type.definition"] = { fg = c.syntax.type }
  theme["@type.qualifier"] = { fg = c.syntax.keyword }

  theme["@property"] = { fg = c.syntax.variable }
  theme["@attribute"] = { fg = c.syntax.constant }

  theme["@comment"] = { fg = c.syntax.comment, italic = true }
  theme["@comment.todo"] = { fg = c.ui.warning, bold = true }
  theme["@comment.warning"] = { fg = c.ui.warning, bold = true }
  theme["@comment.error"] = { fg = c.ui.error, bold = true }
  theme["@comment.note"] = { fg = c.ui.info, bold = true }

  theme["@punctuation.delimiter"] = { fg = c.fg.primary }
  theme["@punctuation.bracket"] = { fg = c.fg.primary }
  theme["@punctuation.special"] = { fg = c.syntax.operator }

  theme["@tag"] = { fg = c.syntax.func }
  theme["@tag.attribute"] = { fg = c.syntax.variable }
  theme["@tag.delimiter"] = { fg = c.fg.primary }

  theme["@markup.heading"] = { fg = c.fg.emphasized, bold = true }
  theme["@markup.strong"] = { bold = true }
  theme["@markup.emphasis"] = { italic = true }
  theme["@markup.underline"] = { underline = true }
  theme["@markup.strike"] = { strikethrough = true }
  theme["@markup.quote"] = { fg = c.syntax.comment, italic = true }
  theme["@markup.link"] = { fg = c.ui.info, underline = true }
  theme["@markup.link.url"] = { fg = c.syntax.string, underline = true }
  theme["@markup.list"] = { fg = c.syntax.operator }
  theme["@markup.raw"] = { fg = c.syntax.string }

  -- ==========================================================================
  -- LSP
  -- ==========================================================================
  theme.DiagnosticError = { fg = c.ui.error }
  theme.DiagnosticWarn = { fg = c.ui.warning }
  theme.DiagnosticInfo = { fg = c.ui.info }
  theme.DiagnosticHint = { fg = c.ui.info }
  theme.DiagnosticOk = { fg = c.ui.success }

  theme.DiagnosticUnderlineError = { sp = c.ui.error, undercurl = true }
  theme.DiagnosticUnderlineWarn = { sp = c.ui.warning, undercurl = true }
  theme.DiagnosticUnderlineInfo = { sp = c.ui.info, undercurl = true }
  theme.DiagnosticUnderlineHint = { sp = c.ui.info, undercurl = true }
  theme.DiagnosticUnderlineOk = { sp = c.ui.success, undercurl = true }

  theme.LspReferenceText = { bg = c.bg.selection }
  theme.LspReferenceRead = { bg = c.bg.selection }
  theme.LspReferenceWrite = { bg = c.bg.selection }

  theme.LspSignatureActiveParameter = { fg = c.fg.emphasized, bold = true }
  theme.LspCodeLens = { fg = c.syntax.comment }
  theme.LspInlayHint = { fg = c.syntax.comment, italic = true }

  -- ==========================================================================
  -- Git Signs
  -- ==========================================================================
  theme.GitSignsAdd = { fg = c.ui.success }
  theme.GitSignsChange = { fg = c.ui.warning }
  theme.GitSignsDelete = { fg = c.ui.error }

  -- ==========================================================================
  -- Telescope
  -- ==========================================================================
  theme.TelescopeBorder = { fg = c.border.default }
  theme.TelescopePromptBorder = { fg = c.border.active }
  theme.TelescopeSelection = { fg = c.fg.bright, bg = c.bg.selection, bold = true }
  theme.TelescopeMatching = { fg = c.ui.match, bold = true }

  -- ==========================================================================
  -- NvimTree / Neo-tree
  -- ==========================================================================
  theme.NvimTreeNormal = { fg = c.fg.primary, bg = c.bg.secondary }
  theme.NvimTreeFolderName = { fg = c.syntax.func }
  theme.NvimTreeFolderIcon = { fg = c.syntax.func }
  theme.NvimTreeOpenedFolderName = { fg = c.syntax.func, bold = true }
  theme.NvimTreeRootFolder = { fg = c.fg.emphasized, bold = true }
  theme.NvimTreeSpecialFile = { fg = c.fg.emphasized }
  theme.NvimTreeGitDirty = { fg = c.ui.warning }
  theme.NvimTreeGitNew = { fg = c.ui.success }
  theme.NvimTreeGitDeleted = { fg = c.ui.error }

  -- ==========================================================================
  -- WhichKey
  -- ==========================================================================
  theme.WhichKey = { fg = c.syntax.func }
  theme.WhichKeyGroup = { fg = c.syntax.keyword }
  theme.WhichKeyDesc = { fg = c.fg.primary }
  theme.WhichKeySeperator = { fg = c.syntax.comment }
  theme.WhichKeyFloat = { bg = c.bg.elevated }
  theme.WhichKeyBorder = { fg = c.border.default }

  return theme
end

return M
