-- Basic Setup
vim.g.mapleader = ","
vim.cmd("inoremap jj <ESC>")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nowrap")

-- Better Backup, Swap and Undos Storage
vim.cmd("set directory=~/.config/nvim/dirs/tmp")
vim.cmd("set backup")
vim.cmd("set backupdir=~/.config/nvim/dirs/backups")
vim.cmd("set undofile")
vim.cmd("set undodir=~/.config/nvim/dirs/undos")
vim.cmd("set viminfo+=n~/.config/nvim/dirs/viminfo")

-- Search
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
-- search will center on the line
vim.keymap.set('n', 'n', 'nzzzv', { silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { silent = true })

-- Scroll
vim.cmd("set scrolloff=8")
vim.cmd("set sidescrolloff=15")
vim.cmd("set sidescroll=1")

-- List chars
vim.opt.listchars = {
  tab = '→ ',
  eol = '↲',
  nbsp = '␣',
  trail = '•',
  extends = '⟩',
  precedes = '⟨',
}
vim.keymap.set('n', '<leader><space>', ':set nu! cursorline! cursorcolumn!<CR>:nohl<CR>',{ silent = true})

-- Tabs
vim.keymap.set('n', '<A-.>', 'gt', { silent = true })
vim.keymap.set('n', '<A-,>', 'gT', { silent = true })
vim.keymap.set('n', '<S-t>', ':tabnew<CR>', { silent = true })

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
-- with arrow keys
vim.keymap.set('n', '<C-Up>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { silent = true })

-- Visual Block
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Split Windows
vim.cmd("set splitbelow")
vim.cmd("set splitright")
vim.keymap.set('n', '<leader>h', ':<C-u>split<CR>', { silent = true })
vim.keymap.set('n', '<leader>v', ':<C-u>vsplit<CR>', { silent = true })

-- Terminal Mode
vim.keymap.set('n', '<leader>sh', ':20split term://zsh<CR> :startinsert<CR>', { silent = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>:q!<CR>', { silent = true })
vim.keymap.set('t', '<C-w><C-w>', '<C-\\><C-n><C-w><C-w>', { silent = true })

-- Remembers cursor position
vim.cmd("au BufReadPost * if line(\"'\\\"\") > 1 && line(\"'\\\"\") <= line(\"$\") | exe \"normal! g'\\\"\" | endif")

-- Go to the first non-blank character of the line
vim.keymap.set('n', '0', '^', { silent = true })
