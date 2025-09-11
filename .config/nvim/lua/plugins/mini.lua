return {
	{ "echasnovski/mini.ai", version = false },
	{ "echasnovski/mini.basics", version = false },
	{ "echasnovski/mini.bracketed", version = false },
	{ "echasnovski/mini.completion", version = false },
	{ "echasnovski/mini.cursorword", version = false },
	{
		"echasnovski/mini.files",
		enabled = true,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
				end,
				desc = "Open mini.files (directory of current file)",
			},
			{
				"<leader>E",
				function()
					require("mini.files").open(vim.uv.cwd(), true)
				end,
				desc = "Open mini.files current working directory",
			},
			{
				"<leader>fm",
				function()
					require("mini.files").open(LazyVim.root(), true)
				end,
				desc = "Open mini.files (root)",
			},
		},
		opts = {
			options = {
				use_as_default_explorer = true,
			},
			windows = {
				max_number = math.huge,
				preview = true,
				width_focus = 20,
				width_nofocus = 15,
				width_preview = 70,
			},
		},
	},
	{
		"echasnovski/mini.hipatterns",
		highlighters = {
			-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
			fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
			hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
			todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
			note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
		},
	},
	{ "echasnovski/mini.icons", version = false },
	{ "echasnovski/mini.map", version = false, enabled = false },
	{ "echasnovski/mini.notify", version = false, enabled = false },
	{ "echasnovski/mini.operators", version = false },
	{ "echasnovski/mini.pairs", version = false },
	{ "echasnovski/mini.snippets", version = false },
	{ "echasnovski/mini.surround", version = false },
	{ "echasnovski/mini.tabline", version = false },
}
