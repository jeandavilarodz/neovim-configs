return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
      require("oil").setup {
          columns = { "icon" },
          keymaps = {
              ["<C-h>"] = false,
              ["<M-h>"] = "actions.select_split",
          },
          view_options = {
              show_hidden = true,
          },
      }
  end,
  keys = {
      { "<leader>de", "<cmd>Oil --float<cr>", mode="n", desc="Open directory for edditing filesystem" },
  },
}

