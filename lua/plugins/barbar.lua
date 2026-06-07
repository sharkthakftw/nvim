return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            animation = true,
            tabpages = true,
            clickable = true,
            insert_at_end = true,
            semantic_letters = true,
        },
        version = "^1.0.0",
    },
}
