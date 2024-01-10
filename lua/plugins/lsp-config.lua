return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "tsserver"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Lua LSP
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            -- C LSP
            lspconfig.clangd.setup({
                capabilities = capabilities
            })

            -- JavaScript / TypeScript LSP
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })

            -- Keymaps (todo: right now they're global, might want to change)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            -- When an object is the first parameter, it means multiple modes. (i.e. Normal & Visual)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
