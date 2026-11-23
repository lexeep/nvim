return {
	{
		"Mofiqul/adwaita.nvim", --"kepano/flexoki-neovim",
		lazy = false,
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("adwaita")
			vim.g.adwaita_transparent = false
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
	},
	--[[
	{
		"OXY2DEV/markview.nvim",
		lazy = false,

		dependencies = { "saghen/blink.cmp", "nvim-mini/mini.icons" },

		opts = {
			preview = {
				icon_provider == "mini",
			},
		},
	},
  --]]

	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependancies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
		opts = {
			overrides = {
				buftype = {
					nofile = {
						anti_conceal = { enabled = false },
					},
				},
			},
		},
	},
}
