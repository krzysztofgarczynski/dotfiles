local servers = { 
  clangd = {},
  bashls = {},
  cmake = {},
  djlsp = {},
  docker_language_server = {},
  fish_lsp = {},
  html = {},
  htmx = {},
  jsonls = {},
  bitbake_language_server = {},
  lua_ls = {},
  marksman = {},
  pylsp = {},
  rust_analyzer = {},
  tinymist = {},
  codelldb = {},
  cortex_debug = {},
  clang_format = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
