return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { -- enable Neovim messages in telescope
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").load_extension("ui-select")
      end,
    },
    { -- enable fuzzy finding
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help" })
    vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Search Keymaps" })
    vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
    vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "Search Select Telescope" })
    vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Search Word" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search Grep" })
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search Diagnostics" })
    vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "Search Resume" })
    vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = "Search recent files" })
    vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Search existing buffers" })

    vim.keymap.set("n", "<leader>/",
      function()
        builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end,
      { desc = "Fuzzily search in current buffer" })

    vim.keymap.set("n", "<leader>s/",
      function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = "Live Grep in Open Files",
        }
      end,
      { desc = "Search in opened files" })

    vim.keymap.set("n", "<leader>sc",
      function()
        builtin.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end,
      { desc = "Search neovim config files" })
  end,
}
