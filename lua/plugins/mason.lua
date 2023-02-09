local status_mason, mason = pcall(require, "mason")
if not status_mason then
  return
end

local status_lspconfig, lspconfig = pcall(require, "mason-lspconfig")
if not status_lspconfig then
  return
end

local setup_mason_null_ls, mason_null_ls = pcall(require, "mason-null-ls")
if not setup_mason_null_ls then
  return
end

mason.setup()

lspconfig.setup({
  ensure_installed = {
    "arduino_language_server",
    "bashls",
    "cssls",
    "cssmodules_ls",
    "eslint",
    "emmet_ls",
    "graphql",
    "html",
    "jsonls",
    "quick_lint_js",
    "tsserver",
    -- "vtsls",
    "sumneko_lua",
    "marksman",
    "prosemd_lsp",
    "remark_ls",
    "zk",
    "prismals",
    "rust_analyzer",
    "sqlls",
    -- "sqls",
    "stylelint_lsp",
    "svelte",
    "tailwindcss",
    "lemminx",
    "yamlls",
  }
})

mason_null_ls.setup({
  ensure_installed = {
    "prettier",
    "eslint_d",
    "stylua",
  },
})
