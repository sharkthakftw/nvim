return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
      "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "~/Obsidian/sharkthak/",
    disable_frontmatter = true,
    attachments = {img_folder = "Attachments"},
    completion = {
        nvim_cmp = true,
        min_chars = 2,
    },

    follow_url_func = function(url)
    vim.fn.jobstart({"xdg-open", url})
    end,

    hl_groups = {
      ObsidianTodo = { bold = true, fg = "#d37838" },
      ObsidianDone = { bold = true, fg = "#4993c6" },
      ObsidianRightArrow = { bold = true, fg = "#d37838" },
      ObsidianTilde = { bold = true, fg = "#c75465" },
      ObsidianImportant = { bold = true, fg = "#d04a3b" },
      ObsidianBullet = { bold = true, fg = "#4993c6" },
      ObsidianRefText = { underline = true, fg = "#8f63cc" },
      ObsidianExtLinkIcon = { fg = "#8f63cc" },
      ObsidianTag = { italic = true, fg = "#4993c6" },
      ObsidianBlockID = { italic = true, fg = "#4993c6" },
      ObsidianHighlightText = { bg = "#cbb6a0" },
    },
  },
}
