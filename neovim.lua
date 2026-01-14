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
}

pastelizard.setup = function()
  -- Syntax groups
  vim.api.nvim_set_hl(0, "Comment", { fg = pastelizard.colors.gray, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "String", { fg = pastelizard.colors.mint })
  vim.api.nvim_set_hl(0, "Character", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "Number", { fg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "Boolean", { fg = pastelizard.colors.accent })
  vim.api.nvim_set_hl(0, "Function", { fg = pastelizard.colors.blue })
  vim.api.nvim_set_hl(0, "Keyword", { fg = pastelizard.colors.pink })
  vim.api.nvim_set_hl(0, "Operator", { fg = pastelizard.colors.fg })
  vim.api.nvim_set_hl(0, "Type", { fg = pastelizard.colors.teal })

  -- UI groups
  vim.api.nvim_set_hl(0, "Normal", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "Cursor", { fg = pastelizard.colors.bg, bg = pastelizard.colors.cursor })
  vim.api.nvim_set_hl(0, "Visual", { bg = pastelizard.colors.selection })
  vim.api.nvim_set_hl(0, "Search", { fg = pastelizard.colors.fg, bg = pastelizard.colors.lavender })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = pastelizard.colors.fg, bg = pastelizard.colors.yellow })

  -- Line numbers
  vim.api.nvim_set_hl(0, "LineNr", { fg = pastelizard.colors.light_gray })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = pastelizard.colors.accent, bold = true })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine", { fg = pastelizard.colors.fg, bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = pastelizard.colors.gray, bg = pastelizard.colors.bg })

  -- Tabs
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = pastelizard.colors.bg })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = pastelizard.colors.accent, bold = true })
end

pastelizard.setup()

-- Set terminal colors
vim.opt.termguicolors = true
