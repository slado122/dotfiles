require('nvim-tree').setup {
	renderer = {
	  root_folder_modifier = ":t:r",
	},
    diagnostics = {
        enable = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    },
}
