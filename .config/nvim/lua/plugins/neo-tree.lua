return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		enabled = true,
		keys = {
			{ "<leader>e", false },
			{ "<leader>E", false },
			{
				"<leader>R",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
				end,
				desc = "Explorer NeoTree (cwd)",
			},
		},
		opts = {
			filesystem = {
				follow_current_file = { enabled = false },
			},
		},
	},
}
