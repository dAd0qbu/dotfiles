" Theme {{{
let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha
autocmd vimenter * ++nested colorscheme catppuccin

"}}}


" Coc.nvim: {{{
" Map Ctrl + Space để show list functions/biến autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Hightlight con tro
autocmd CursorHold * silent call CocActionAsync('highlight')

"Multi cursor
hi CocCursorRange guibg=#282a36 guifg=#f8f8f2
nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

"}}}


" Discord Rich Presence {{{
"
let g:presence_neovim_image_text = "The One True Nuoc Tay Rua Bon Cau"

"}}}

