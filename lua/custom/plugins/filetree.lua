-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local status_ok, nt = pcall(require, "neo-tree")
		if not status_ok then
			return
		end

		nt.setup({
			close_if_last_win = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			sort_case_insensitive = false,
			respect_buf_cwd = true,
			window = {
				position = "right"
			}
		})
	end,
}
--    require('neo-tree').setup {}

