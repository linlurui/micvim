
scriptencoding utf-8

" Identify platform {
let g:MAC = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" }

" Windows Compatible {
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
if g:WINDOWS
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
" }

map <tab> :NERDTreeToggle<cr>

" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

let mapleader = '`'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"set statusline=%#warningmsg#
"set statusline=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:molokai_original = 1
let g:rehash256 = 1


let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>




nnoremap <C-l> gt
nnoremap <C-h> gT
"nnoremap <leader>t : tabe<CR>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

syntax enable
set background=dark
let g:solarized_termcolors=256

let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=0
let NERDTreeWinPos="right"

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

	" Javascript syntax hightlight
	" " Set syntax highlighting for specific file types
	autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.json set filetype=json
	autocmd BufRead,BufNewFile *.md set filetype=markdown
	autocmd Syntax javascript set syntax=jquery
	"
	" Color scheme
	colorscheme molokai
	" colorscheme solarized
	highlight NonText guibg=#060606
	highlight Folded  guibg=#0A0A0A guifg=#9090D0

let g:tagbar_autofocus = 1
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
    \ }


	"Backspace deletes like most programs in insert mode
	set backspace=2
	" Show the cursor position all the time
	set ruler
	" Display incomplete commands
	set showcmd
	" Set fileencodings
	set fileencodings=utf-8,bg18030,gbk,big5
	"
	filetype plugin indent on
	
	" Softtabs, 2 spaces
	set tabstop=2
	set shiftwidth=2
	set shiftround
	set expandtab

	" Display extra whitespace
	set list listchars=tab:»·,trail:·
	
	" Make it obvious where 80 characters is
	set textwidth=100
	set colorcolumn=+1

	" Numbers
  set number
  set numberwidth=5
	
	set matchpairs+=<:>
	set hlsearch

	" Highlight current line
  au WinLeave * set nocursorline nocursorcolumn
  au WinEnter * set cursorline cursorcolumn
  set cursorline cursorcolumn


set nu  
set nocompatible  
syntax on  
set tabstop=3  
set softtabstop=3  
set shiftwidth=3  
set autoindent  
set cindent  
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s  



"ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.java,*.xml,*.js,*.coffee,*.es6 " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif


nnoremap <leader>ri :RunInInteractiveShell<space>

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()


" 将下面配置文件加入到.vimrc文件中
set nocompatible " 必须
filetype off     " 必须

"将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#rc()

" 使用Vundle管理插件，必须
Plugin 'gmarik/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'kchmck/vim-coffee-script'
Plugin 'honza/vim-snippets'


" 其他插件

"Bundle 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'christoomey/vim-run-interactive'


call vundle#end() " 必须
filetype plugin indent on " 必须

execute pathogen#infect()
