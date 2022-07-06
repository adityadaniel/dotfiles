return {
    tools = {
    },
    server = { 
        on_attach = require("adityadaniel.lsp.lsp-handlers").on_attach,
        capabilities = require("adityadaniel.lsp.lsp-handlers").capabilities,
    }
}
