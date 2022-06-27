call plug#begin('~/.config/nvim/bundle')
Plug 'andweeb/presence.nvim'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'andersevenrud/nordic.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'github/copilot.vim'

Plug 'numToStr/Comment.nvim'

call plug#end()

lua require('Comment').setup()
