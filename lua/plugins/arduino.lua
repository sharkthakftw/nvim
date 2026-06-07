return {
    "yuukiflow/Arduino-Nvim",
    ft = "arduino",
    opts = {
        port = "/dev/ttyUSB0",
    },
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "neovim/nvim-lspconfig",
    },
}
