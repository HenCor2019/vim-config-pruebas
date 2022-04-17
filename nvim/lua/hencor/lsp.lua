local opts = { noremap = true, silent = true }

local function on_attach(client, bufnr)
    -- keymaps for lsp
    vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', opts)
    vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', opts)
    --client.resolved_capabilities.document_formatting = false
    --client.resolved_capabilities.document_range_formatting = false


    vim.api.nvim_set_keymap('n', '<leader>vo', ':LspRestart<cr>', opts)

    -- diagnostics to move between info and errors
    vim.api.nvim_set_keymap('n', '<leader>vn', ':lua vim.lsp.diagnostic.goto_next()<cr>', opts)
    vim.api.nvim_set_keymap('n', '<leader>vp', ':lua vim.lsp.diagnostic.goto_prev()<cr>', opts)

    vim.api.nvim_set_keymap('n', '<leader>vca', ':lua vim.lsp.buf.code_action()<cr>', opts)
    vim.api.nvim_set_keymap('n', '<leader>vf', ':lua vim.lsp.buf.formatting()<cr>', opts)

    vim.api.nvim_set_keymap('n', '<leader>vi', ':lua vim.lsp.buf.implementation()<cr>', opts)
    vim.api.nvim_set_keymap('n', '<leader>vrn', ':lua vim.lsp.buf.rename()<cr>', opts)

    require'lsp_signature'.on_attach() -- no need to specify bufnr if you don't use toggle_key

    vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
    vim.diagnostic.config({
      virtual_text = {
        prefix = 'ﯙ ', -- Could be '●', '▎', 'x' 
      }
    })
end

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}

    opts.on_attach = on_attach
    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
end)
