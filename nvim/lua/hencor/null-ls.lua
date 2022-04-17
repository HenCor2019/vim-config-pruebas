local null_ls = require("null-ls")

local sources = {
     null_ls.builtins.formatting.eslint_d,
     null_ls.builtins.diagnostics.eslint_d,
}

null_ls.setup({ 
  sources = sources,
  on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})
