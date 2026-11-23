return {
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
		init = function()
			local ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"tsx",
				"css",
				"yaml",
				"gdscript",
				"godot_resource",
				"html",
				"latex",
				"yaml",
			}

			local skip_indent = {
				ruby = true,
				lua = true,
				gdscript = true,
				godot_resource = true,
			}

			vim.api.nvim_create_autocmd("FileType", {
				desc = "Enable treesitter highlighting and indentation",
				callback = function(args)
					local ft = vim.bo[args.buf].filetype
					if ft == "" then
						return
					end

					if pcall(vim.treesitter.start, args.buf) then
						if ft == "ruby" then
							vim.bo[args.buf].syntax = "on"
						end
						if not skip_indent[ft] then
							vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
						end
					end
				end,
			})

			-- Install any missing parsers from your list once startup finishes
			vim.api.nvim_create_autocmd("User", {
				pattern = "LazyDone",
				once = true,
				callback = function()
					local ok, ts = pcall(require, "nvim-treesitter")
					if ok and type(ts.install) == "function" then
						ts.install(ensure_installed)
					end
				end,
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
