require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
-- list of language server: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
