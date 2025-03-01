return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    ---@module "ibl"
    ---@type ibl.config
    opts = function()
        return {
            scope = {
                enabled = true,
                show_start = true,
                show_end = false,
                highlight = { "Function", "Label" }, 
            },
        }
    end,
}
