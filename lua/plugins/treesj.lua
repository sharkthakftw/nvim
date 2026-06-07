return {
    'Wansmer/treesj',
    keys = { '<leader>m' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
        require('treesj').setup({ use_default_keymaps = false })
        vim.keymap.set("n", "<leader>m", "<cmd>lua require('treesj').toggle()<CR>", { desc = "toggle merge" }) -- treesj toggle codeblock
    end,
}
