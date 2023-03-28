local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'neovim/nvim-lspconfig'
-- Plug("neoclide/coc.nvim", { branch = "release" })
    Plug "jdhao/better-escape.vim"
    Plug "rust-lang/rust.vim"
    Plug "lervag/vimtex"
-- vim.cmd('Plug "morhetz/gruvbox"')
-- vim.cmd('Plug "ghifarit53/tokyonight-vim"')
-- vim.cmd('Plug "vim-airline/vim-airline"')
vim.call('plug#end')

vim.o.number = true
-- vim.g.airline#extensions#tabline#enabled = 1 -- Enable the list of buffers
-- vim.g.airline_theme='badwolf'
-- vim.o.cursorline = true
-- vim.o.cursorcolumn = true
vim.o.nocompatible = true
vim.o.filetype = 'on'
vim.o.filetype = 'plugin'
vim.o.filetype = 'indent'
vim.o.syntax = 'on'
vim.o.guicursor = 'n-v-c-i:block'
vim.o.clipboard = 'unnamedplus'
-- vim.o.filetype = 'plugin indent'
vim.o.shiftwidth = 4 -- Set shift width to 4 spaces.
vim.o.tabstop = 4 -- Set tab width to 4 columns.
vim.o.expandtab = true -- Use space characters instead of tabs.
vim.o.nobackup = true -- Do not save backup files.
vim.o.scrolloff = 10 -- Do not let cursor scroll below or above N number of lines when scrolling.
vim.o.wrap = false -- Do not wrap lines. Allow long lines to extend as far as the line goes.
vim.o.incsearch = true -- While searching though a file incrementally highlight matching characters as you type.
vim.o.ignorecase = true -- Ignore capital letters during search.
vim.o.smartcase = true -- Override the ignorecase option if searching for capital letters. This will allow you to search specifically for capital letters.
vim.o.showcmd = true -- Show partial command you type in the last line of the screen.
vim.o.showmode = true -- Show the mode you are on the last line.
vim.o.showmatch = true -- Show matching words during a search.
vim.o.hlsearch = true -- Use highlighting when doing a search.
vim.o.history = 1000 -- Set the commands to save in history default number is 20.
-- vim.o.termguicolors = true
-- vim.cmd('colorscheme tokyonight')
-- vim.o.bg = 'dark'
-- vim.cmd('colorscheme gruvbox')

-- VIMTEX CONFIG
-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'zathura'

-- Or with a generic interface:
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
vim.g.vimtex_compiler_method = 'latexmk'

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".

