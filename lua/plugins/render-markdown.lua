local colors = {
    bg        = '#1A1B1F',
    bg_mid    = '#202124',
    bg_light  = '#2A2B2F',
    grey_dark = '#3B3C3F',
    grey      = '#7F8083',
    fg        = '#DADBDD',
    beige     = '#CBB6A0',
    red       = '#D04A3B',
    pink      = '#C75465',
    orange    = '#D37838',
    gold      = '#D9A72C',
    lime      = '#65AD5F',
    teal      = '#5BCBB2',
    blue      = '#4993C6',
    violet    = '#8F63CC',
}

local function apply_highlights()
    local set_hl = vim.api.nvim_set_hl

    -- headings
    set_hl(0, 'RenderMarkdownH1', { fg = colors.red })
    set_hl(0, 'RenderMarkdownH2', { fg = colors.orange })
    set_hl(0, 'RenderMarkdownH3', { fg = colors.gold })
    set_hl(0, 'RenderMarkdownH4', { fg = colors.lime })
    set_hl(0, 'RenderMarkdownH5', { fg = colors.blue })
    set_hl(0, 'RenderMarkdownH6', { fg = colors.violet })
    set_hl(0, 'RenderMarkdownH1Bg', { bg = colors.bg_light })
    set_hl(0, 'RenderMarkdownH2Bg', { bg = colors.bg_light })
    set_hl(0, 'RenderMarkdownH3Bg', { bg = colors.bg_light })
    set_hl(0, 'RenderMarkdownH4Bg', { bg = colors.bg_light })
    set_hl(0, 'RenderMarkdownH5Bg', { bg = colors.bg_light })
    set_hl(0, 'RenderMarkdownH6Bg', { bg = colors.bg_light })

    -- code blocks
    set_hl(0, 'RenderMarkdownCode', { bg = colors.bg_mid })
    set_hl(0, 'RenderMarkdownCodeInfo', { fg = colors.grey, bg = colors.bg_mid })
    set_hl(0, 'RenderMarkdownCodeBorder', { bg = colors.bg_mid })
    set_hl(0, 'RenderMarkdownCodeFallback', { fg = colors.fg })
    set_hl(0, 'RenderMarkdownCodeInline', { bg = colors.grey_dark, fg = colors.beige })

    -- quotes
    set_hl(0, 'RenderMarkdownQuote1', { fg = colors.blue })
    set_hl(0, 'RenderMarkdownQuote2', { fg = colors.violet })
    set_hl(0, 'RenderMarkdownQuote3', { fg = colors.teal })
    set_hl(0, 'RenderMarkdownQuote4', { fg = colors.pink })
    set_hl(0, 'RenderMarkdownQuote5', { fg = colors.gold })
    set_hl(0, 'RenderMarkdownQuote6', { fg = colors.lime })

    -- misc
    set_hl(0, 'RenderMarkdownBullet', { fg = colors.beige })
    set_hl(0, 'RenderMarkdownDash', { fg = colors.grey })
    set_hl(0, 'RenderMarkdownSign', { bg = colors.bg })
    set_hl(0, 'RenderMarkdownMath', { fg = colors.teal })
    set_hl(0, 'RenderMarkdownIndent', { fg = colors.grey_dark })
    set_hl(0, 'RenderMarkdownHtmlComment', { fg = colors.grey })

    -- links
    set_hl(0, 'RenderMarkdownLink', { fg = colors.blue })
    set_hl(0, 'RenderMarkdownLinkTitle', { fg = colors.blue, underline = true })
    set_hl(0, 'RenderMarkdownWikiLink', { fg = colors.teal })

    -- checkboxes
    set_hl(0, 'RenderMarkdownUnchecked', { fg = colors.grey })
    set_hl(0, 'RenderMarkdownChecked', { fg = colors.lime })
    set_hl(0, 'RenderMarkdownTodo', { fg = colors.gold })

    -- tables
    set_hl(0, 'RenderMarkdownTableHead', { fg = colors.fg, bold = true })
    set_hl(0, 'RenderMarkdownTableRow', { fg = colors.fg })

    -- diagnostics
    set_hl(0, 'RenderMarkdownSuccess', { fg = colors.lime })
    set_hl(0, 'RenderMarkdownInfo', { fg = colors.blue })
    set_hl(0, 'RenderMarkdownHint', { fg = colors.teal })
    set_hl(0, 'RenderMarkdownWarn', { fg = colors.gold })
    set_hl(0, 'RenderMarkdownError', { fg = colors.red })
end

return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        enabled = false,
        completions = { lsp = { enabled = true } },
    },
    config = function(_, opts)
        require('render-markdown').setup(opts)
        apply_highlights()
        vim.api.nvim_create_autocmd('ColorScheme', {
            group = vim.api.nvim_create_augroup('RenderMarkdownTheme', { clear = true }),
            callback = apply_highlights,
        })
    end,
}
