return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- to make this transition easier from VS Code.. use ctrl-b?
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem left toggle<CR>')
  end
}
