vim.opt.showmode = false          -- Don't show mode
vim.opt.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.g.autopairs_enabled = true    -- Enable autopairs
vim.cmd("set expandtab")          -- Use spaces instead of tabs
vim.cmd("set tabstop=2")          -- Number of spaces that a <Tab> in the file counts for
vim.cmd("set softtabstop=2")      -- Number of spaces that a <Tab> counts for while performing editing operations
vim.cmd("set shiftwidth=2")       -- Number of spaces to use for each step of (auto)indent
vim.cmd("set nowrap")             -- Don't wrap lines
vim.g.mapleader = ","             -- Set leader to comma

-- List chars
vim.opt.listchars = {
  tab = '→ ',
  eol = '↲',
  nbsp = '␣',
  trail = '•',
  extends = '⟩',
  precedes = '⟨',
}
-- Remembers cursor position
vim.cmd("au BufReadPost * if line(\"'\\\"\") > 1 && line(\"'\\\"\") <= line(\"$\") | exe \"normal! g'\\\"\" | endif")
-- Highlight on yank
vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank({higroup = 'IncSearch', timeout = 200})")
