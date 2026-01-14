-- Pastelizard Theme for Neovim
-- Enchanted pastel colorscheme

local pastelizard = {}

pastelizard.colors = {
  bg = "#F8F6FF",
  fg = "#4A4458",
  accent = "#9B8EC5",
  cursor = "#C9A8D4",
  selection = "#D4B8E8",
  pink = "#F5A3B3",
  mint = "#A8E6CF",
  yellow = "#FFEAA7",
  blue = "#A8D8EA",
  lavender = "#D4B8E8",
  teal = "#88D8C0",
  gray = "#6B5B7A",
  light_gray = "#C9BBD9",
  error = "#F5A3B3",
  warning = "#FFEAA7",
  info = "#A8D8EA",
  hint = "#A8E6CF",
}

pastelizard.setup = function()
  vim.api.nvim_set_hl(0, "Comment", { fg = pastelizard.colors.gray, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "String", { fg = pastelizard.colors.mint })
  vim.api.nvim_set_hl(0, "Character", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "Number", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Boolean", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "Float", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Function", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "FunctionBuiltin", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "FunctionCall", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "Keyword", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "KeywordReturn", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Conditional", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Repeat", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Label", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Operator", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Variable", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Identifier", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Type", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "TypeDefinition", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "StorageClass", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "Structure", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "Typedef", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "Property", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Field", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Parameter", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Namespace", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Module", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Include", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Define", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Macro", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "PreProc", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Special", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "SpecialChar", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "SpecialKey", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "NonText", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "Tag", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Delimiter", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "Punctuation", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "Bracket", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "SpecialComment", { fg = pastelizard.colors.gray, italic = true })
  vim.api.nvim_set_hl(0, "Debug", { fg = pastelizard.colors.pink })

  vim.api.nvim_set_hl(0, "Normal", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NormalNC", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "FloatTitle", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "Cursor", { fg = pastelizard.colors.bg, bg = pastelizard.colors.cursor })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "Visual", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "Search", { fg = pastelizard.colors.fg, bg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = pastelizard.colors.fg, bg = pastelizard.colors.yellow })
  vim.api.nvim_set_hl(0, "Substitute", { fg = pastelizard.colors.bg, bg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "CurSearch", { fg = pastelizard.colors.fg, bg = pastelizard.colors.lavender })

  vim.api.nvim_set_hl(0, "LineNr", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = pastelizard.colors.accent, bold = true })
  vim.api.nvim_set_hl(0, "CursorLineFold", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "CursorLineSign", { fg = pastelizard.colors.light_gray })

  vim.api.nvim_set_hl(0, "SignColumn", { fg = pastelizard.colors.light_gray, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "Folded", { fg = pastelizard.colors.gray, bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = pastelizard.colors.light_gray })

  vim.api.nvim_set_hl(0, "StatusLine", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = pastelizard.colors.gray, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "StatusLineWinBar", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "StatusLineWinBarNC", { fg = pastelizard.colors.gray, bg = pastelizard.colors.bg })

  vim.api.nvim_set_hl(0, "TabLine", { fg = pastelizard.colors.gray, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = pastelizard.colors.accent, bold = true })

  vim.api.nvim_set_hl(0, "Title", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "Directory", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = pastelizard.colors.mint })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = pastelizard.colors.yellow })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "DiffText", { bg = pastelizard.colors.lavender })

  vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = pastelizard.colors.hint })

  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = pastelizard.colors.hint })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = pastelizard.colors.hint })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = pastelizard.colors.hint })
  vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = pastelizard.colors.hint })

  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "LspCodeLens", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "LspInlayHint", { fg = pastelizard.colors.light_gray, bg = pastelizard.colors.selection })

  vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = pastelizard.colors.pink, bold = true })

  vim.api.nvim_set_hl(0, "CmpNormal", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "CmpBorder", { fg = pastelizard.colors.accent, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "CmpCursor", { fg = pastelizard.colors.bg, bg = pastelizard.colors.cursor })
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = pastelizard.colors.accent, bold = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = pastelizard.colors.accent, bold = true })
  vim.api.nvim_set_hl(0, "CmpItemKind", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = pastelizard.colors.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = pastelizard.colors.fg })

  vim.api.nvim_set_hl(0, "NotifyBackground", { bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NotifyERROR", { fg = pastelizard.colors.error, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NotifyWARN", { fg = pastelizard.colors.warning, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NotifyINFO", { fg = pastelizard.colors.info, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NotifyHINT", { fg = pastelizard.colors.hint, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = pastelizard.colors.error })
  vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = pastelizard.colors.warning })
  vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = pastelizard.colors.info })
  vim.api.nvim_set_hl(0, "NotifyHINTBorder", { fg = pastelizard.colors.hint })

  vim.api.nvim_set_hl(0, "Menu", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "MenuSel", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "WildMenu", { bg = pastelizard.colors.selection })

  vim.api.nvim_set_hl(0, "QuickFixLine", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "qfLineNr", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "qfFileName", { fg = pastelizard.colors.blue })

  vim.api.nvim_set_hl(0, "NeogitDiffAdd", { fg = pastelizard.colors.mint })
  vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "NeogitDiffDelete", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "NeogitDiffContext", { fg = pastelizard.colors.gray })
  vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "NeogitHunkHeader", { fg = pastelizard.colors.fg, bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { fg = pastelizard.colors.accent, bg = pastelizard.colors.selection })
end

pastelizard.setup()

vim.opt.termguicolors = true
