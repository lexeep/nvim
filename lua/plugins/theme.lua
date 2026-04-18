return {
	{
		"Mofiqul/adwaita.nvim", --"kepano/flexoki-neovim",
		lazy = false,
		priority = 1000,

		config = function()
			vim.cmd.colorscheme 'adwaita'
      vim.g.adwaita_transparent = true

		end
	}

}
