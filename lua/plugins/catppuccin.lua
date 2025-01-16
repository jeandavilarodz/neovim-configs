return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
	no_italics = true,
	term_colors = true,
        transparent_background = false,
        color_overrides = {
            mocha = {
	        base = "#000000",
	        mantle = "#000000",
	        crust = "#000000",
	    },
        },
	integrations = {
	    telescope = {
	        enabled = true,
		style = "nvchad",
	    },
	},
    },
}
