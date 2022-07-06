local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "adityadaniel.lsp.lsp-signature"
require "adityadaniel.lsp.lsp-installer"
require("adityadaniel.lsp.lsp-handlers").setup()
