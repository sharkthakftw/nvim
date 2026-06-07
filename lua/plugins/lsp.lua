return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            -- Lua
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" } },
                        workspace = { checkThirdParty = false },
                    },
                },
            })
            vim.lsp.enable("lua_ls")

            -- Other servers
            local servers = {
                "bashls",
                "clangd",
                "html",
                "cssls",
                "ts_ls",
            }
            for _, server in ipairs(servers) do
                vim.lsp.config(server, {})
                vim.lsp.enable(server)
            end
        end,
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "clangd",
                    "html",
                    "cssls",
                    "ts_ls",
                },
                automatic_installation = true,
            })
        end,
    },
}
