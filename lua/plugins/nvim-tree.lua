return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      -- netrw deaktivieren
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- true color aktivieren
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
