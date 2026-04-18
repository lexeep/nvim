return {
	{
		"windwp/nvim-ts-autotag",

		per_filetype = {
			["javascript"] = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
			["javascriptreact"] = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
			["typescript"] = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
			["typescriptreact"] = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		},
	},

	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
}
