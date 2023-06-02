local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'neovim/nvim-lspconfig'
-- Plug("neoclide/coc.nvim", { branch = "release" })
    Plug "rust-lang/rust.vim"
    Plug "lervag/vimtex"
    --Plug "-hui/fidget.nvim"
    Plug "hrsh7th/cmp-buffer"
    Plug "hrsh7th/cmp-path"
    Plug "hrsh7th/cmp-cmdline"
    Plug "hrsh7th/nvim-cmp"
    Plug "hrsh7th/cmp-nvim-lsp"
    Plug "simrat39/rust-tools.nvim"
    Plug "hrsh7th/vim-vsnip"
    Plug 'junegunn/fzf'
-- vim.cmd('Plug "morhetz/gruvbox"')
-- vim.cmd('Plug "ghifarit53/tokyonight-vim"')
    Plug "vim-airline/vim-airline"
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

-- KEYMAPS 
--vim.keymap.set("i", "<C-BS>", "<C-W>", {})
vim.keymap.set("i", "jk", "<Esc>l", {})
vim.keymap.set("n", "<CR>", "o<Esc>k",{})

-- LSP CONFIGS 
local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not auto-select, nvim-cmp plugin will handle this for us.
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + "c"

local function on_attach(client, buffer)
  -- This callback is called when the LSP is atttached/enabled for this buffer
  -- we could set keymaps related to LSP, etc here.
end

-- Configure LSP through rust-tools.nvim plugin.
-- rust-tools will configure and enable certain LSP features for us.
-- See https://github.com/simrat39/rust-tools.nvim#configuration
local opts = {
  tools = {
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
  server = {
    -- on_attach is a callback called when the language server attachs to the buffer
    on_attach = on_attach,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}

require("rust-tools").setup(opts)

-- Setup Completion
-- See https://github.com/hrsh7th/nvim-cmp#basic-configuration
local cmp = require("cmp")
cmp.setup({
  preselect = cmp.PreselectMode.None,
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    -- Add tab support
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }),
  },

  -- Installed sources
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "path" },
    { name = "buffer" },
  },
})





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

