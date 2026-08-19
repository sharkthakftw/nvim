return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = {
    { "<leader>t", "<cmd>Outline<CR>", desc = "toggle outline" },
  },
  opts = {
    outline_window = {
        auto_close = true,
    },
    keymaps = {
        show_help = '?',
        peek_location = 'o',
        toggle_preview = 'K',
    }
  },
}
