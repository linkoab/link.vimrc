set t_Co=256
set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.
set autochdir
set smarttab
set autoindent
set ts=4
set sw=4

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"nmap <leader>e  :<C-u>NERDTree<CR>

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" [Link] start here
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nmap <leader>e  :<C-u>NERDTree<CR>

Plug 'chazy/cscope_maps'

Plug 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
nmap <leader>t :<C-u>TagbarToggle<CR>

" ## YouCompleteMe (code-completion)
Plug 'Valloric/YouCompleteMe'
let g:ycm_filetype_blacklist = {
\ 'tagbar' : 1,
\ 'qf' : 1,
\ 'notes' : 1,
\ 'markdown' : 1,
\ 'unite' : 1,
\ 'text' : 1,
\ 'vimwiki' : 1,
\ 'gitcommit' : 1,
\}
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
"set background=dark
"syntax enable
"set background=light
"colorscheme solarized
"let g:solarized_termtrans=1

Plug 'jnurmine/Zenburn'
colorscheme zenburn
"Plug 'gorodinskiy/vim-coloresque'
"Plug 'skielbasa/vim-material-monokai'
"set background=dark
"set termguicolors
"colorscheme material-monokai
"let g:airline_theme='materialmonokai'
"let g:materialmonokai_italic=1

" Initialize plugin system
call plug#end()

set nu
set hls

