local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    require('none-ls.diagnostics.eslint_d'),
    require('none-ls.code_actions.eslint_d'),
  }
})

-- Format on save for specific filetypes
vim.cmd [[autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx lua vim.lsp.buf.format()]]
