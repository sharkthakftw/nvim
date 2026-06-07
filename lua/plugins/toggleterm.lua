return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup {
            open_mapping = [[<c-`>]],
            direction = 'tab',
            float_opts = {
                border = 'curved',
            },
        }
    end
}
