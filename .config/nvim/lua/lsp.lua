-- lsp config
vim.lsp.enable({ "lua_ls", "ols" })
-- allows diagnostic words to show left of the code line
vim.diagnostic.config({ virtual_text = true })


-- enable auto format on save
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    ---@diagnostic disable-next-line: need-check-nil
    if client:supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end
      })
    end
  end
})
