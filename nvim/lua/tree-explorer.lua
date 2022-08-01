require('nvim-web-devicons').setup()
local on_attach = function(bufnr)
    vim.keymap.set("n", "<leader>v", "<C-v>")
    vim.bo[bufnr].path = "/tmp"
end
require("nvim-tree").setup {
	remove_keymaps = true,
	on_attach = on_attach,
    filters = {
        custom = {"^.git$"}
    },
	view = {
		adaptive_size = false,
		centralize_selection = false,
		width = 30,
		height = 30,
		hide_root_folder = false,
		side = "left",
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		mappings = {
			custom_only = false,
			list = {
			},
		},
	},
}
