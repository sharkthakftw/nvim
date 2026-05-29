return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local theme = require('lualine.themes.gruvbox')
      theme.normal.a  = { bg = '#C75465', fg = '#1A1B1F', gui = 'bold' }
      theme.normal.b  = { bg = '#2A2B2F', fg = '#DADBDD' }
      theme.normal.c  = { bg = '#202124', fg = '#B8B9BB' }

      theme.insert.a  = { bg = '#65AD5F', fg = '#1A1B1F', gui = 'bold' }
      theme.insert.b  = { bg = '#2A2B2F', fg = '#DADBDD' }
      theme.insert.c  = { bg = '#202124', fg = '#B8B9BB' }

      theme.visual.a  = { bg = '#8F63CC', fg = '#1A1B1F', gui = 'bold' }
      theme.visual.b  = { bg = '#2A2B2F', fg = '#DADBDD' }
      theme.visual.c  = { bg = '#202124', fg = '#B8B9BB' }

      theme.replace.a = { bg = '#D04A3B', fg = '#1A1B1F', gui = 'bold' }
      theme.replace.b = { bg = '#2A2B2F', fg = '#DADBDD' }
      theme.replace.c = { bg = '#202124', fg = '#B8B9BB' }

      theme.command.a = { bg = '#D9A72C', fg = '#1A1B1F', gui = 'bold' }
      theme.command.b = { bg = '#2A2B2F', fg = '#DADBDD' }
      theme.command.c = { bg = '#202124', fg = '#B8B9BB' }

      theme.inactive.a = { bg = '#202124', fg = '#7F8083', gui = 'bold' }
      theme.inactive.b = { bg = '#202124', fg = '#7F8083' }
      theme.inactive.c = { bg = '#1A1B1F', fg = '#7F8083' }

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
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
