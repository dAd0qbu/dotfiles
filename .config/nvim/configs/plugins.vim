call plug#begin('~/.config/nvim/bundle')

Plug 'catppuccin/nvim', {'as': 'catppuccin'}

Plug 'andweeb/presence.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'github/copilot.vim'

Plug 'numToStr/Comment.nvim'

call plug#end()

lua require('Comment').setup()
lua require('lualine').setup()
