return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = { ensure_installed = { "rust", "ron" } },
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })

      local parsers = {
        "bash", "c", "c_sharp", "cpp", "dockerfile", "go", "html", "javascript",
        "json", "lua", "markdown", "markdown_inline", "python", "query", "regex",
        "rust", "sql", "toml", "tsx", "typescript", "vim", "vimdoc", "yaml",
      }

      for _, parser in ipairs(parsers) do
        vim.api.nvim_create_autocmd("FileType", {
          pattern = parser,
          callback = function()
            if not require("nvim-treesitter.parsers").has_parser(parser) then
              require("nvim-treesitter.install").ensure_installed(parser)
            end
          end,
        })
      end
    end,
  },
}

