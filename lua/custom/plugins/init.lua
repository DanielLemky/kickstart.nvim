-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

	{
		"kdheepak/lazygit.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("lazy").setup({})
			vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>")
		end
	},

	{
		'johnfrankmorgan/whitespace.nvim',
		config = function ()
			require('whitespace-nvim').setup({
			-- configuration options and their defaults

			-- `highlight` configures which highlight is used to display
			-- trailing whitespace
			highlight = 'DiffDelete',

			-- `ignored_filetypes` configures which filetypes to ignore when
			-- displaying trailing whitespace
			ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },

			-- `ignore_terminal` configures whether to ignore terminal buffers
			ignore_terminal = true,
			})

			-- remove trailing whitespace with a keybinding
			vim.keymap.set('n', '<leader>tw', require('whitespace-nvim').trim)
		end
	},
}
