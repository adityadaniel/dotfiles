local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "cssls",
  "html",
  "jsonls",
  "sumneko_lua",
  "pyright",
  "sourcekit",
  "yamlls",
  "bashls",
  "gopls",
  "graphql",
  "solargraph",
  "rust_analyzer",
}

local settings = {
  ensure_installed = servers,
  ui = {
    icons = {},
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
    },
  },

  log_level = vim.log.levels.INFO,
}

lsp_installer.setup(settings)

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("adityadaniel.lsp.lsp-handlers").on_attach,
    capabilities = require("adityadaniel.lsp.lsp-handlers").capabilities,
  }

  -- if server == "jsonls" then
    --local jsonls_opts = require "adityadaniel.lsp.settings.jsonls"
    -- opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  -- end

  if server == "yamlls" then
    local yamlls_opts = require "adityadaniel.lsp.settings.yamlls"
    opts = vim.tbl_deep_extend("force", yamlls_opts, opts)
  end

  if server == "sumneko_lua" then
    local sumneko_opts = require "adityadaniel.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "adityadaniel.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "gopls" then
      local gopls_opts = require "adityadaniel.lsp.settings.gopls"
      opts = vim.tbl_deep_extend("force", gopls_opts, opts)
  end

  if server == "rust" then
    local rust_opts = require "adityadaniel.lsp.settings.rust"
    opts = vim.tbl_deep_extend("force", rust_opts, opts)
  end

  lspconfig[server].setup(opts)
  ::continue::
end

-- TODO: add something to installer later
-- require("lspconfig").motoko.setup {}
