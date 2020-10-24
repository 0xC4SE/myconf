let mapleader=" "
set encoding=utf-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.utf-8
set relativenumber
set number
syntax enable
syntax on
set wildmenu
set hlsearch
set incsearch
set backspace=2
set cursorline
set ignorecase
set smartcase
set scrolloff=7
set tabstop=4
set expandtab
set shiftwidth=4

"keymap
noremap j h
noremap k j
noremap i k
noremap h i
noremap H I
map I 7i
map J 3j
map L 3l
map K 7k
imap jj <ESC>
vmap jj <ESC>
map s <nop>
nmap S :w<CR>
nmap ss :q!<CR>
map sjl :source %<CR>
map <leader><CR> :e! ~/.vim/vimrc<CR>
"paste
nmap cp :set paste<CR>"+p:set nopaste<CR>

"open a tab
nmap <LEADER>et :tabe<CR>
nmap <LEADER>l :tabn<CR>
nmap <LEADER>j :tabp<CR>

"window split
map <LEADER>wk :split<CR>
map <LEADER>wl :vsplit<CR>
nmap <LEADER>ww <C-w><C-w>

"======vimplug=========
call plug#begin('~/.vim/autoload')

Plug 'vim-airline/vim-airline'
Plug 'prabirshrestha/vim-lsp'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'neoclide/coc.nvim'
Plug 'skywind3000/asyncrun.vim'
Plug 'puremourning/vimspector',{'do':'./install_gadget.py --enable-c --enable-python --enable-bash'}
Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/fzf.vim'

call plug#end()

"======coc.nvim=========
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

"======asyncrun=========
noremap <silent><f7> :copen<CR><C-w><C-w>:AsyncRun gcc -g % -o %<<CR>
noremap <silent><f5> :AsyncRun! ./%<<CR>
noremap <silent><f2> :AsyncStop!<CR>


" === vimspector
let g:vimspector_enable_mappings = 'HUMAN'
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=X  texthl=Normal 
sign define vimspectorBPDisabled text=* texthl=Normal
sign define vimspectorPC text=👉 texthl=SpellBad

"======easy-align=======
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


"======fzf.vim=========






