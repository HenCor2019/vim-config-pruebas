local ok, null_ls = pcall(require, "null-ls")

if not ok then
	return
end

local sources = {
	null_ls.builtins.code_actions.gitsigns,
	null_ls.builtins.formatting.eslint_d,
	null_ls.builtins.diagnostics.eslint_d,
}

null_ls.setup({
	sources = sources,
 on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                -- vim.lsp.buf.formatting_sync()
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
  end,
})
