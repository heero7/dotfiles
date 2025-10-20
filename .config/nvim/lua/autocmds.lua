local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("TextYankPost", {
  desc = "Highlights the yanked text to notify the writer",
  -- todo: I don't think this is necessary
  group = augroup("Highlight Group", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})
