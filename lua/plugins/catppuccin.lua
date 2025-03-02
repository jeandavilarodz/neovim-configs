return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        transparent_background = true,
        term_colors = true,
        color_overrides = {
            mocha = {
                base = "#000000",
                mantle = "#000000",
                crust = "#000000",
            },
        },
        flavor = "mocha",
        integrations = {
            cmp = true,
            treesitter = true,
            blink_cmp = true,
            harpoon = true,
            fidget = true,
            mason = true,
            fzf = true,
            telescope = {
                enabled = true,
            },
            native_lsp = {
                enabled = true,
                inlay_hints = {
                    background = false,
                },
            },
            indent_blankline = {
                enabled = true,
                scope_color = "lavender",
                colored_indent_levels = false,
            },
        },
    },
}
