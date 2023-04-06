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

vim.opt.number = true
-- vim.g.airline#extensions#tabline#enabled = 1 -- Enable the list of buffers
-- vim.g.airline_theme='badwolf'
vim.opt.syntax = 'on'
vim.opt.guicursor = 'n-v-c-i:block'
vim.opt.clipboard = 'unnamedplus'
-- vim.opt.filetype = 'plugin indent'
vim.opt.filetype="on"
vim.opt.filetype.indent="on"
vim.opt.filetype.plugin="on"
-- vim.opt.filetype.plugin.indent = "on" // on by default iirc
vim.opt.syntax = "on"
vim.opt.shiftwidth = 4 -- Set shift width to 4 spaces.
vim.opt.tabstop = 4 -- Set tab width to 4 columns.
vim.opt.expandtab = true -- Use space characters instead of tabs.
-- vim.opt.nobackup = true -- Do not save backup files. //no such option?
vim.opt.scrolloff = 10 -- Do not let cursor scroll below or above N number of lines when scrolling.
vim.opt.wrap = false -- Do not wrap lines. Allow long lines to extend as far as the line goes.
vim.opt.incsearch = true -- While searching though a file incrementally highlight matching characters as you type.
vim.opt.ignorecase = true -- Ignore capital letters during search.
vim.opt.smartcase = true -- Override the ignorecase option if searching for capital letters. This will allow you to search specifically for capital letters.
vim.opt.showcmd = true -- Show partial command you type in the last line of the screen.
vim.opt.showmode = true -- Show the mode you are on the last line.
vim.opt.showmatch = true -- Show matching words during a search.
vim.opt.hlsearch = true -- Use highlighting when doing a search.
vim.opt.history = 1000 -- Set the commands to save in history default number is 20.
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
-- let g:python_highlight_space_errors = 0
-- vim.opt.termguicolors = true

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

