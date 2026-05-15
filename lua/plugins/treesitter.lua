return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      vim.schedule(function()
        require("nvim-treesitter").setup({
          ensure_installed = {
            "lua", "vim", "vimdoc", "bash", "markdown", "markdown_inline",
            "json", "html", "css", "javascript", "typescript", "c", "cpp", "qmljs"
          },
          highlight = { enable = true },
          indent = { enable = true },
        })
      end)
    end,
  },
}
