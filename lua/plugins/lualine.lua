return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local colors = {
                bg = '#1a1b1f',
                midbg = '#202124',
                lightbg = '#2a2b2f',
                grey = '#7f8083',
                fg = '#dadbdd',
                red = '#d04a3b',
                pink = '#c75465',
                green = '#65ad5f',
                purple = '#8f63cc',
                yellow = '#d9a72c',
            }
            local theme = {
                normal = {
                    a = { fg = colors.bg, bg = colors.pink, gui = 'bold' },
                    b = { fg = colors.fg, bg = colors.lightbg },
                    c = { fg = colors.fg, bg = colors.midbg },
                },
                insert = {
                    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
                    b = { fg = colors.fg, bg = colors.lightbg },
                    c = { fg = colors.fg, bg = colors.midbg },
                },
                visual = {
                    a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
                    b = { fg = colors.fg, bg = colors.lightbg },
                    c = { fg = colors.fg, bg = colors.midbg },
                },
                replace = {
                    a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
                    b = { fg = colors.fg, bg = colors.lightbg },
                    c = { fg = colors.fg, bg = colors.midbg },
                },
                command = {
                    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
                    b = { fg = colors.fg, bg = colors.lightbg },
                    c = { fg = colors.fg, bg = colors.midbg },
                },
                inactive = {
                    a = { fg = colors.grey, bg = colors.midbg, gui = 'bold' },
                    b = { fg = colors.grey, bg = colors.midbg },
                    c = { fg = colors.grey, bg = colors.bg },
                },
            }
            require('lualine').setup {
                options = {
                    theme = theme,
                    component_separators = { left = "│", right = "│" },
                    section_separators = { left = "", right = "" },
                    disabled_filetypes = {
                        statusline = { "dashboard", "alpha", "ministarter" },
                    },
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { { "filename", path = 1 } },
                    lualine_x = { "searchcount", "fileformat", "filetype" },
                    lualine_y = { "" },
                    lualine_z = { "location" },
                },
            }
        end,
    },
}
