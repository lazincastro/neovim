return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
	config = function()
	  vim.cmd.colorscheme "catppuccin-mocha"
		-- background transparent
		-- vim.cmd [[highlight Normal ctermbg=none guibg=none]]
		-- cursorline color
		vim.cmd [[highlight CursorColumn guibg=#2a2b3c]]
		vim.cmd [[highlight CursorLine guibg=#2a2b3c]]
	end
}
