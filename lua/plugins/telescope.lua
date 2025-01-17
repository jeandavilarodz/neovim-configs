return {
  "nvim-telescope/telescope.nvim",
  cmd = {"Telescope"},
  enabled = true,

  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },

  -- {{{ keymaps
  keys = function()
    local cmdT = "<cmd>Telescope "
    return {
      {"<leader>fC", cmdT .. "commands<cr>", desc = "Telescope commands" },
      {"<leader>fF", cmdT .. "media_files<cr>", desc = "Telescope media files" },
      {"<leader>fM", cmdT .. "man_pages<cr>", desc = "Telescope man pages" },
      {"<leader>fR", cmdT .. "registers<cr>", desc = "Telescope registers" },
      {"<leader>fS", cmdT .. "colorscheme<cr>", desc = "Telescope colorschemes" },

      {"<leader>fb", cmdT .. "buffers<cr>", desc = "Telescope buffers" },

      {"<leader>fc",
       function()
         require("telescope.builtin").find_files{
           cwd = vim.fn.stdpath("config")
         }
       end
      },

      {"<leader>fd", cmdT .. "diagnostics<cr>", desc = "Telescope diagnostics" },
      {"<leader>ff", cmdT .. "find_files<cr>", desc = "Telescope Find files" },
      {"<leader>fg", cmdT .. "live_grep<cr>", desc = "Telescope Live Grep" },
      {"<leader>fh", cmdT .. "help_tags<cr>", desc = "Telecope Help files" },

      {"<leader>fk", cmdT .. "keymaps<cr>", desc = "Telescope keymaps" },
      {"<leader>fl", cmdT .. "resume<cr>", desc = "Telescope resume" },
      {"<leader>fm", cmdT .. "marks<cr>", desc = "Telescope marks" },
      {"<leader>fo", cmdT .. "oldfiles<cr>", desc = "Telescope old files" },

      {"<leader>fp",
       function()
         require("telescope.builtin").find_files{
           cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
         }
       end
      },

      {"<leader>fw", cmdT .. "grep_string<cr>", desc = "Telescope Find Word" },

      {"<leader>gC", cmdT .. "git_commits<cr>", desc = "Telescope git commits" },
      {"<leader>gb", cmdT .. "git_branches<cr>", desc = "Telescope git branches" },
      {"<leader>go", cmdT .. "git_status<cr>", desc = "Telescope git status" },

      {"<leader>LS", cmdT .. "lsp_dynamic_workspace_symbols<cr>", desc = "Telescope Workspace Symbols" },
      {"<leader>Ls", cmdT .. "lsp_document_symbols<cr>", desc = "Telescope Document Symbols" },
    }
  end,
}
