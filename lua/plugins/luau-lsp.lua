local function rojo_project()
	return vim.fs.root(0, function(name)
		return name:match(".+%.project%.json$")
	end)
end

vim.lsp.config("luau-lsp", {
	settings = {
		["luau-lsp"] = {
			completion = {
				imports = {
					enabled = true, -- enable auto imports
				},
			},
		},
	},
})

vim.lsp.config("*", {
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
})

return {
	"lopi-py/luau-lsp.nvim",
	opts = {
		platform = {
			type = rojo_project and "roblox" or "standard",
		},
		types = {
			roblox_security_level = "PluginSecurity",
		},
		sourcemap = {
			enabled = true,
			autogenerate = true, -- automatic generation when the server is initialized
			rojo_project_file = "default.project.json",
			sourcemap_file = "sourcemap.json",
		},
		plugin = {
			enabled = true,
			port = 3667,
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
