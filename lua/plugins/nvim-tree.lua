return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      vim.opt.termguicolors = true

      require("nvim-tree").setup({
        view = {
          width = 35,
        },
      })

      -- Toggle mit Ctrl+n
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    end,
  },
}
