return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
	config = function()
	  vim.cmd.colorscheme "catppuccin"
		-- background transparent
		vim.cmd [[highlight Normal ctermbg=none guibg=none]]
		-- cursorline color
		vim.cmd [[highlight CursorColumn guibg=#45475a]]
		vim.cmd [[highlight CursorLine guibg=#45475a]]
	end
}
