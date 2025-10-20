return {
	{ "nvim-mini/mini.ai", version = false },
	{ "nvim-mini/mini.basics", version = false },
	{ "nvim-mini/mini.bracketed", version = false },
	{ "nvim-mini/mini.completion", version = false },
	{ "nvim-mini/mini.cursorword", version = false },
	{
		"nvim-mini/mini.files",
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
		"nvim-mini/mini.hipatterns",
		highlighters = {
			-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
			fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
			hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
			todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
			note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
		},
	},
	{ "nvim-mini/mini.icons", version = false },
	{ "nvim-mini/mini.map", version = false, enabled = false },
	{ "nvim-mini/mini.notify", version = false, enabled = false },
	{ "nvim-mini/mini.operators", version = false },
	{ "nvim-mini/mini.pairs", version = false },
	{ "nvim-mini/mini.snippets", version = false },
	{ "nvim-mini/mini.surround", version = false },
	{ "nvim-mini/mini.tabline", version = false },
}
