-- Plugins to load
vim.pack.add({
  { src = "https://github.com/nvim-mini/mini.statusline" },
  { src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = "https://github.com/mason-org/mason.nvim" },
  -- telescope
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
  -- end telescope
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "master"
  },
  { src = "https://github.com/christoomey/vim-tmux-navigator", name = "vim-navigator" }
})

--vim.pack.del({ "vim-tmux-navigator" })

require("mini.statusline").setup()
require("catppuccin").setup()
require("oil").setup({
  view_options = {
    -- Show files and directories that start with "."
    show_hidden = true
  }
})
require("nvim-web-devicons").setup()
require("mason").setup()
require("nvim-treesitter.configs").setup({
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "odin" },
  auto_install = false,
  highlight = {
    enable = true,
    -- Disable treesitter if the file is huge.
    disable = function(_, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        vim.notify("File is considered large in configuration.")
        return true
      end
    end,
    additional_vim_regex_highlighting = false,
  }
})

-- ignore certain directories
-- i.e. node_modules
require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "tmux/",
    }
  }
})

local telescope = require("telescope.builtin")
local open_neovim_config = function()
  require("telescope.builtin").find_files {
    cwd = vim.fn.stdpath("config")
  }
end

-- keymaps for plugins
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>fd", telescope.find_files)
-- edit neovim: find files in the neovim config from telescope
vim.keymap.set("n", "<leader>en", open_neovim_config)


vim.cmd.colorscheme("catppuccin")

-- configuration or setup for plugins
vim.api.nvim_create_autocmd("PackChanged", {
  desc = "Updates all tree sitter configs when an updating the plugin.",
  group = vim.api.nvim_create_augroup("heero custom group 1", { clear = true }),
  callback = function(event)
    if event.data.kind == 'update' then
      vim.notify("Updating nvim-treesitter by running TSUpdate..", vim.log.levels.INFO)
      local ok = pcall(vim.cmd, "TSUpdate")
      if ok then
        vim.notify("TSUpdate successful!", vim.log.levels.INFO)
      else
        vim.notify("TSUpdate unavaiable, will not run.", vim.log.levels.WARN)
      end
    end
  end
})
