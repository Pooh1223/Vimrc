"" VIM Configuration File
"" Description: Optimized for C/C++ development, but useful also for other things.
"" Author: Gerhard Gappmeier
""
"
"" set UTF-8 encoding
"set enc=utf-8
"set fenc=utf-8
"set termencoding=utf-8
"" disable vi compatibility (emulation of old bugs)
"set nocompatible
"" use indentation of previous line
"set autoindent
"" use intelligent indentation for C
"set smartindent
"" configure tabwidth and insert spaces instead of tabs
"set tabstop=4        " tab width is 4 spaces
"set shiftwidth=4     " indent also with 4 spaces
"set expandtab        " expand tabs to spaces
"" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
"set textwidth=120
"" turn syntax highlighting on
"set t_Co=256
"syntax on
"" colorscheme wombat256
"" turn line numbers on
"set number
"" highlight matching braces
"set showmatch
"" intelligent comments
""set comments=sl:/*,mb:\ *,elx:\ */
"" set cursor line
"set cursorline
"
"" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
"" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
"" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
"
"" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
"let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"
"
"" Enhanced keyboard mappings
""
"" in normal mode F2 will save the file
"nmap <F2> :w<CR>
"" in insert mode F2 will exit insert, save, enters insert again
"imap <F2> <ESC>:w<CR>i
"" switch between header/source with F4
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"" recreate tags file with F5
"map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
"" create doxygen comment
"map <F6> :Dox<CR>
"" build using makeprg with <F7>
"map <F7> :make<CR>
"" build using makeprg with <S-F7>
"map <S-F7> :make clean all<CR>
"" goto definition with F12
"nmap <F8> :w<CR>: !g++ -std=c++11 % -o %< && ./%< <CR> 
""build and run c++ file in normal mode
"imap <F8> <Esc>:w<CR>: !g++ -std=c++11 % -o %< && ./%< <CR>
""build and run c++ file in insert mode
"nmap <F9> :wqall<CR>
""leave vim
"imap <F9> <ESC> :wqall<CR>
""leave vim
"map <F12> <C-]>
"" in diff mode we use the spell check keys for merging
"nmap <C-s> :w <CR>
""save file
"imap <C-s> <ESC> :w <CR>
""save file
"if &diff
"  ” diff settings
"  map <M-Down> ]c
"  map <M-Up> [c
"  map <M-Left> do
"  map <M-Right> dp
"  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
"  " spell settings
"  :setlocal spell spelllang=en
"  " set the spellfile - folders must exist
"  set spellfile=~/.vim/spellfile.add
"  map <M-Down> ]s
"  map <M-Up> [s
"endif
"
""colorscheme slate
"
"" inoremap trigger_char mapping_str
"" <LEFT> means cursor move left 1 space 
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>
"
"call plug#begin('~/.vim/plugged')
"
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-surround'
"Plug 'scrooloose/nerdtree' ,{'on' : 'NERDTreeToggle'}
"Plug 'scrooloose/syntastic'
"
"call plug#end()
"
"let NERDTreeWinSize=15
"autocmd vimenter * NERDTree


"VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
"set comments=sl:/*,mb:\ *,elx:\ */
" set cursor line
set cursorline
set clipboard=unnamedplus

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
"map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
nmap <F8> :w<CR>: !g++ -std=c++11 % -o %< && ./%< <CR> 
"build and run c++ file in normal mode
imap <F8> <Esc>:w<CR>: !g++ -std=c++11 % -o %< && ./%< <CR>
"build and run c++ file in insert mode
nmap <F9> :wqall<CR>
"leave vim
imap <F9> <ESC> :wqall<CR>
"leave vim
map <F12> <C-]>
" in diff mode we use the spell check keys for merging
nmap <C-s> :w <CR>
"save file
imap <C-s> <ESC> :w <CR>
"save file 

if &diff
  ” diff settings
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
  " spell settings
  :setlocal spell spelllang=en
  " set the spellfile - folders must exist
  set spellfile=~/.vim/spellfile.add
  map <M-Down> ]s
  map <M-Up> [s
endif

colorscheme ron

"wsl-copy setting
vmap "+y <Plug>WslCopy

"own copy-paste setting
vmap <silent> ;y : !/mnt/c/Windows/System32/clip.exe<cr>u
nmap <silent> ;p :read !/mnt/c/Windows/System32/paste.exe <cr>i<bs><esc>l
nmap <silent> ;p <esc>:read !/mnt/c/Windows/System32/paste.exe <cr>i<bs><esc>l

"syntastic setting
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pylint']

"indentLine setting
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

"YCM setting
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

nnoremap <leader> tdd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader> tdf  :YcmCompleter GoToDefinition<CR>
nnoremap <leader> tdc  :YcmCompleter GoToDeclaration<CR>
nnoremap <leader> yst :YcmCompleter GetType<CR>

"airline setting

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
" Always show the status line
set laststatus=2
" Format the status line
let g:airline#extensions#tabline#enabled = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:ycm_add_preview_to_completeopt = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
",{'off' : 'NERDTreeToggle'}
Plug 'christianfosli/wsl-copy'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe',{'do':'./install.py'}
Plug 'vim-airline/vim-airline'

call plug#end()

let NERDTreeWinSize=15
"Plug 'vim-syntastic/syntastic'
