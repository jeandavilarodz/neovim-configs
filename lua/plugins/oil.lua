return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
      require("oil").setup {
          columns = { "icon" },
          keymaps = {
              ["<C-h>"] = false,
              ["<M-h>"] = "actions.select_split",
          },
      }
  end,
  keys = {
      { "<leader>de", "<cmd>Oil --float<cr>", mode="n", desc="Open directory for edditing filesystem" },
  },
}

