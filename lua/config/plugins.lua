local function get_plugins()
	local plugins = {
		"NMAC427/guess-indent.nvim",

		{
			"lukas-reineke/indent-blankline.nvim",
			-- Enable `lukas-reineke/indent-blankline.nvim`
			-- See `:help ibl`
			main = "ibl",
			opts = {},
		},

		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
			opts = {},
		},

		"norcalli/nvim-colorizer.lua",
	}

	local path = vim.fn.stdpath("config") .. "/lua/plugins/*.lua"
	local files = vim.fn.glob(path, true, true)

	for i, file in ipairs(files) do
		local plugin = string.sub(file, 1, -5):gsub(".*/lua/", "")
		if not string.find(plugin, "!") or file ~= "unused" then
			table.insert(plugins, require(plugin))
		end
	end

	return plugins
end

require("lazy").setup({ get_plugins() }, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
