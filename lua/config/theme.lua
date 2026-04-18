return {
	{
		"Mofiqul/adwaita.nvim", 
		lazy = false,
		priority = 1000,

		config = function()
			vim.cmd.colorscheme 'adwaita'
      vim.g.adwaita_transparent  = true
		end
	}

}
