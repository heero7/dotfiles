return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_gitignored = false,
                    always_show = {
                        ".gitignore",
                        ".eslintrc.cjs",
                        ".tmux.conf",
                        ".zshrc",
                        ".gitconfig",
                        ".yabairc"
                    }
                }
            }
        })
        vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle<CR>")
    end
}
