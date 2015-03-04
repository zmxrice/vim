set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'sukima/xmledit'
Plugin 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'klen/python-mode'
Plugin 'Valloric/ListToggle'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 't9md/vim-quickhl'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
Plugin 'YankRing.vim'
Plugin 'vcscommand.vim'
Plugin 'ShowPairs'
Plugin 'SudoEdit.vim'
Plugin 'EasyGrep'
Plugin 'VOoM'
Plugin 'VimIM'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html

" Git plugin not hosted on GitHub

" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

" Avoid a name conflict with L9


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_key_list_select_completion = ['<Enter>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全

"nnoremap <leader>lo :lopen<CR>	"open locationlistp
"nnoremap <leader>lc :lclose<CR>	"close locationlist

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let mapleader=","


nnoremap <leader>gt :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
nnoremap <F7> :GundoToggle<CR>
nnoremap <space> za <CR>
nnoremap <leader><space> zr <CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
inoremap <leader><leader> <C-x><C-o>
"inoremap <C-[> <Esc> <cr>
map <silent> <F9> :TlistToggle<cr> 
map <silent> <F8> :NERDTreeToggle<cr> 


let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
"let g:ycm_filetype_specific_completion_to_disable = {
"      \ 'java': 1
"      \}
""let g:ycm_filetype_blacklist = {
"      \ 'java' : 1,
"      \}



let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=grey	
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=grey
let g:indent_guides_guide_size = 1

set nocompatible
set autoindent
set ignorecase smartcase
set hlsearch
set shiftwidth=4
set tabstop=4      
set tags=tags;
set autochdir
filetype plugin on       
set backspace=indent,eol,start

  
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1
let Tlist_Auto_Open=1
set mouse=a
colorscheme desert

autocmd vimenter * NERDTree
