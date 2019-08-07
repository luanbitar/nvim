call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme peace
syntax enable

set hidden
set number
"set relativenumber
"set list
"set listchars=tab:¬\|,trail:·
set ruler
set tabstop=2
set shiftwidth=2
set inccommand=split
set clipboard=unnamed
set mouse=a
set undofile
set undodir=~/.config/nvim/undodir
set cursorline
set termguicolors

"scroll padding
if !&scrolloff
	set scrolloff=5
endif
set nowrap

"Set leade and vim maps
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Adding alt+k to move line up / alt+j down"
nnoremap <silent>∆ :m .+1<CR>==
nnoremap <silent>˚ :m .-2<CR>==
inoremap <silent>∆ <Esc>:m .+1<CR>==gi
inoremap <silent>˚ <Esc>:m .-2<CR>==gi
vnoremap <silent>∆ :m '>+1<CR>gv=gv
vnoremap <silent>˚ :m '<-2<CR>gv=gv

"Toggle word wrap
nnoremap <leader>z :set wrap!<CR>

"Toggle NERDTree
nnoremap <leader>b :NERDTreeToggle<cr>

"Buffer maps ctrl+L to next, ctrl+h to prev and alt+w to close
nnoremap <C-l> :bn<cr>
nnoremap <C-h> :bp<cr>
nnoremap ∑ :bw<cr>

"Fuzzy finder
nnoremap <leader>p :FZF<cr>
nnoremap <leader>f /
nnoremap <leader>F :Ag 

"Plugins
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let g:PKG_NAME_airline = 1
let g:webdevicons_enable_airline_statusline = 0
"airline
let g:airline_theme='peace'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1
let g:airline_section_error=''
let g:airline_section_warning=''
let g:airline_section_b=' Beba água'
let g:airline_section_c=airline#section#create(['path'])
let g:airline_section_x=''
let g:airline_section_y=''
let g:airline_section_z=airline#section#create(['%3v'])
let g:airline_left_sep="\uE0C4"
let g:airline_right_sep="\uE0C7"
