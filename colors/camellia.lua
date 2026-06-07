local colors = {
    bg = '#1A1B1F',
    midbg = '#202124',
    lightbg = '#2A2B2F',
    darkgrey = '#3B3C3F',
    grey = '#7F8083',
    fg_dark = '#A0A1A4',
    fg_mid = '#B8B9BB',
    fg = '#DADBDD',
    red = '#D04A3B',
    pink = '#C75465',
    orange = '#D37838',
    gold = '#D9A72C',
    lime = '#65AD5F',
    teal = '#5BCBB2',
    blue = '#4993C6',
    violet = '#8F63CC',
}

vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.o.termguicolors = true
vim.g.colors_name = 'camellia'

local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalNC', { fg = colors.fg_mid, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.midbg })
hi('FloatBorder', { fg = colors.pink, bg = colors.midbg })
hi('Comment', { fg = colors.grey, italic = true })
hi('Cursor', { fg = colors.bg, bg = colors.fg })
hi('CursorLine', { bg = colors.midbg })
hi('CursorColumn', { bg = colors.midbg })
hi('Visual', { bg = colors.darkgrey })
hi('LineNr', { fg = colors.darkgrey })
hi('CursorLineNr', { fg = colors.fg, bold = true })
hi('SignColumn', { fg = colors.darkgrey, bg = colors.bg })
hi('FoldColumn', { fg = colors.darkgrey, bg = colors.bg })
hi('Folded', { fg = colors.grey, bg = colors.midbg })
hi('VertSplit', { fg = colors.darkgrey })
hi('WinSeparator', { fg = colors.fg })
hi('StatusLine', { fg = colors.fg, bg = colors.midbg })
hi('StatusLineNC', { fg = colors.grey, bg = colors.bg })
hi('Pmenu', { fg = colors.fg, bg = colors.midbg })
hi('PmenuSel', { fg = colors.bg, bg = colors.teal })
hi('PmenuSbar', { bg = colors.darkgrey })
hi('PmenuThumb', { bg = colors.grey })
-- hi('Search',        { fg = colors.bg, bg = colors.gold })
-- hi('IncSearch',     { fg = colors.bg, bg = colors.orange })
-- hi('CurSearch',     { fg = colors.bg, bg = colors.orange })
hi('MatchParen', { fg = colors.teal, bold = true })

-- Syntax
hi('Identifier', { fg = colors.blue })
hi('Function', { fg = colors.violet })
hi('Statement', { fg = colors.pink })
hi('Keyword', { fg = colors.pink, italic = true })
hi('Conditional', { fg = colors.pink })
hi('Repeat', { fg = colors.pink })
hi('Operator', { fg = colors.fg })
hi('Constant', { fg = colors.gold })
hi('String', { fg = colors.lime })
hi('Character', { fg = colors.orange })
hi('Number', { fg = colors.gold })
hi('Boolean', { fg = colors.orange })
hi('Float', { fg = colors.gold })
hi('Type', { fg = colors.teal })
hi('Special', { fg = colors.teal })

-- Diagnostics
hi('DiagnosticError', { fg = colors.red })
hi('DiagnosticWarn', { fg = colors.orange })
hi('DiagnosticInfo', { fg = colors.blue })
hi('DiagnosticHint', { fg = colors.teal })

hi('DiagnosticVirtualTextError', { fg = colors.red, bg = '#2A1F1F' })
hi('DiagnosticVirtualTextWarn', { fg = colors.orange, bg = '#2A2318' })
hi('DiagnosticVirtualTextInfo', { fg = colors.blue, bg = '#1E2530' })
hi('DiagnosticVirtualTextHint', { fg = colors.teal, bg = '#1A2628' })

hi('DiagnosticUnderlineError', { sp = colors.red, undercurl = true })
hi('DiagnosticUnderlineWarn', { sp = colors.orange, undercurl = true })
hi('DiagnosticUnderlineInfo', { sp = colors.blue, undercurl = true })
hi('DiagnosticUnderlineHint', { sp = colors.teal, undercurl = true })

-- LSP references
hi('LspReferenceText', { bg = colors.lightbg })
hi('LspReferenceRead', { bg = colors.lightbg })
hi('LspReferenceWrite', { bg = colors.lightbg })

-- Git
hi('DiffAdd', { bg = '#27332A' })
hi('DiffChange', { bg = '#2C3444' })
hi('DiffDelete', { bg = '#402626' })
hi('DiffText', { bg = '#43556E' })

-- Treesitter
hi('@variable', { fg = colors.fg })
hi('@function', { fg = colors.violet })
hi('@function.call', { fg = colors.violet })
hi('@constructor', { fg = colors.teal })
hi('@type', { fg = colors.teal })
hi('@type.builtin', { fg = colors.teal, italic = true })
hi('@keyword', { fg = colors.pink, italic = true })
hi('@string', { fg = colors.lime })
hi('@number', { fg = colors.gold })
hi('@boolean', { fg = colors.orange })
hi('@comment', { fg = colors.grey, italic = true })
hi('@parameter', { fg = colors.orange })
hi('@field', { fg = colors.blue })
hi('@property', { fg = colors.blue })
hi('@namespace', { fg = colors.fg_mid })
hi('@module', { fg = colors.fg_mid })
hi('@punctuation.bracket', { fg = colors.fg_dark })
hi('@punctuation.delimiter', { fg = colors.fg_dark })

-- Telescope
hi('TelescopeNormal', { fg = colors.fg, bg = colors.bg })
hi('TelescopeSelection', { fg = colors.fg, bg = colors.midbg })
hi('TelescopeBorder', { fg = colors.pink })
hi('telescopepromptborder', { fg = colors.pink })
hi('TelescopePromptPrefix', { fg = colors.fg })
hi('TelescopeMatching', { fg = colors.gold, bold = true })

-- Barbar
hi('BufferCurrent', { fg = colors.fg, bg = colors.midbg, bold = true })
hi('BufferCurrentSign', { fg = colors.pink, bg = colors.midbg })
hi('BufferCurrentMod', { fg = colors.gold, bg = colors.midbg })
hi('BufferVisible', { fg = colors.fg_mid, bg = colors.bg })
hi('BufferVisibleSign', { fg = colors.pink, bg = colors.bg })
hi('BufferVisibleMod', { fg = colors.gold, bg = colors.bg })
hi('BufferInactive', { fg = colors.grey, bg = colors.bg })
hi('BufferInactiveSign', { fg = colors.darkgrey, bg = colors.bg })
hi('BufferInactiveMod', { fg = colors.gold, bg = colors.bg })
hi('BufferTabpageFill', { bg = colors.bg })

-- Dashboard
hi('DashboardHeader', { fg = colors.fg })
hi('DashboardFooter', { fg = colors.gold, italic = true })
hi('DashboardShortCut', { fg = colors.pink })
hi('DashboardDesc', { fg = colors.fg_mid })
hi('DashboardKey', { fg = colors.gold })

-- Oil
hi('OilDir', { fg = colors.blue, bold = true })
hi('OilFile', { fg = colors.fg })
hi('OilLink', { fg = colors.teal, italic = true })
hi('OilSocket', { fg = colors.violet })
