-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("let g:python3_host_prog = '/home/anand/.config/nvim/venv/bin/python'")
vim.cmd("set bg=dark")

local cmp_nvim_lsp = require("cmp_nvim_lsp")
require("lspconfig").clangd.setup({
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = { "clangd", "--offset-encoding=utf-16" },
})
