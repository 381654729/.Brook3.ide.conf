" 前导符号
"""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>"
let g:mapleader="\<Space>"
"""""""""""""""""""""""""""""""""""""""""
" 插件管理配置
"""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')



" plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>pc :PlugClean<cr>

" 代码检测
"""""""""""""""""""""""""""""""""""""""""
Plug 'w0rp/ale'

" 全局搜索
"""""""""""""""""""""""""""""""""""""""""
" 文件搜索
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
let g:Lf_ShortcutF = '<Leader>sd'
" 代码搜索
Plug 'dyng/ctrlsf.vim'
let g:ctrlsf_ackprg = 'rg'
nmap <Leader>sf :CtrlSF<space>

"""""""""""""""""""""""""""""""""""""""""
" Plug 'Valloric/YouCompleteMe'


Plug 'mattn/emmet-vim'

" 中文文档
Plug 'qiyu2580/vimcdoc'

"""""""""""""""""""""""""""""""""""""""""
" 工程管理
"""""""""""""""""""""""""""""""""""""""""
" 文件浏览
"""""""""""""""""""""""""""""""""""""""""
" 目录树
Plug 'scrooloose/nerdtree'
nnoremap <leader>fl :NERDTreeToggle<cr> "速记：file list
" 设置nerdtree子窗口宽度
let NERDTreeWinSize=32
" 设置子窗口位置
let NERDTreeWinPos='left'
" 显示隐藏文件
let NERDTreeShowHidden=1
" 不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 常用操作 CUJKotrqpP<C-j><C-k>

" 版本控制
"""""""""""""""""""""""""""""""""""""""""
" git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"""
" python
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
" let g:pymode_python = 'python3'
"""

" 多文件编辑
"""""""""""""""""""""""""""""""""""""""""
" buffer vim打开文件后会在内存中生存buffer
" window
" tab
" buffer 切换快捷键
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bd :bd<cr>
map <leader>bs :ls<cr>

" 环境恢复
"""""""""""""""""""""""""""""""""""""""""
" 保存快捷键
map <leader>sa :mksession! ~/.vim/my.session<cr> :wviminfo! ~/.vim/my.viminfo<cr>
" 恢复快捷键
map <leader>ra :source ~/.vim/my.session<cr> :rviminfo ~/.vim/my.viminfo<cr>

" mark
"""""""""""""""""""""""""""""""""""""""""
Plug 'kshenoy/vim-signature'	"基本操作：m,./[`/]`/m-/m<space>

" 快速注释
"""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"基本操作：
"<space>ci选区内切换注释状态
"<space>cm选区内整体行注释
"<space>cn选区内注释
"<space>cs注释块
"<space>cu取消注释

" 括号配对
"""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
" 常用操作
"cs替换 ds删除

"多点修改
Plug 'terryma/vim-multiple-cursors'
" 常用操作
" next <C-n>
" skip <C-x>
" prev <C-p>

" 配色
"""""""""""""""""""""""""""""""""""""""""
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'

" 方法列表
"""""""""""""""""""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
nmap <Leader>ff :TagbarToggle<cr>
"设置tagbar的窗口宽度    
let g:tagbar_width=30
"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_autopreview = 1
"关闭排序,即按标签本身在文件中的位置排序 s可切换
let g:tagbar_sort = 0
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

" 快速移动
"""""""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <Leader>jw <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <Leader>jw <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" markdown
"""""""""""""""""""""""""""""""""""""""""
Plug 'iamcco/markdown-preview.vim'
nmap <silent> <F3> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F3> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode
" markdown 语法高亮
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" 状态栏增强
"""""""""""""""""""""""""""""""""""""""""
Plug 'itchyny/lightline.vim'
set laststatus=2                 "永远显示状态栏

call plug#end()            " required



"""""""""""""""""""""""""""""""""""""""""
" 基础配置设置
"""""""""""""""""""""""""""""""""""""""""
set noimdisable                  "normal模式输入法自动切换为英文
syntax enable                    "开启语法高亮功能
syntax on                        "允许用指定高亮配色方案替换默认方案
filetype on                      "检测文件类型
filetype plugin on               "允许插件
filetype plugin indent on        "启动自动补全

set shortmess=atI                "启动的时候不显示那个援助索马里儿童的提示
set nolist                       " 不Show non-printable characters.
set nobackup                     "不自动保存
set noswapfile                   "不生成swap文件
set paste                        "粘贴保留格式
set relativenumber number        "相对行号，可用Ctrl+n在相对/绝对行号间切换
set history=2000                 "history存储长度
set nocompatible                 "非兼容vi模式,避免以前版本的一些bug和局限
set autoread                     "文件修改之后自动载入
set t_ti= t_te=                  "退出vim后，内容显示在终端屏幕
set title                        "change the terminal's title
set vb t_vb=                     "当vim进行编辑时，如果命令错误，会发出警报，该设置去掉警报
set tm=500
set mat=2                        "Blink times every second when matching brackets
set showmatch                    "括号配对情况
set hidden                       "A buffer becomes hidden when it is abandoned
set wildmode=list:longest
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set wildignore=*.swp,*.,*.pyc,*.class
set scrolloff=5                  "至少有5行在光标所在行上下
set mouse-=a                     "不启用鼠标
set selection=old
set selectmode=mouse,key
set viminfo^=%                   "Remember info about open buffers on close
set magic                        "正则表达式匹配形式
set backspace=eol,start,indent   "Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.
set cursorline             " Find the current line quickly.
set cursorcolumn           " Find the current column quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.



" .vimrc
"""""""""""""""""""""""""""""""""""""""""
" Fast reloading of the .vimrc
map <leader>ss :source ~/.vimrc<cr>
" Fast editing of .vimrc
map <leader>ee :e ~/.vimrc<cr>
" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc



" 搜索
"""""""""""""""""""""""""""""""""""""""""
set hlsearch                     "高亮search命中的文本。
set ignorecase                   "搜索时忽略大小写
set incsearch                    "随着键入即时搜索
set smartcase                    "有一个或以上大写字母时仍大小写敏感



" 缩进
"""""""""""""""""""""""""""""""""""""""""
filetype indent on               "针对不同的文件类型采用不同的缩进格式
set smartindent                  "智能缩进
set autoindent                   "总是自动缩进
set tabstop=4                    "设置Tab键的宽度(等同的空格个数)
set shiftwidth=4                 "自动对齐的空格数
set softtabstop=4                "按退格键时可以一次删掉4个空格
set smarttab                     "insert tabs on the start of a line according to shiftwidth, not tabstop
set expandtab                    "将Tab自动转化成空格(需要输入真正的Tab键时,使用Ctrl+V+Tab)
set shiftround                   "Use multiple of shiftwidth when indenting with '<' and '>'



" 折叠
"""""""""""""""""""""""""""""""""""""""""
set foldlevel=99
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。



"编码
"""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,chinese,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set helplang=cn
set termencoding=utf-8           "这句只影响普通模式 (非图形界面) 下的Vim
set ffs=unix,dos,mac             "Use Unix as the standard file type
set formatoptions+=m             "如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=B             "合并两行中文时，不在中间加空格：



" 撤销
"""""""""""""""""""""""""""""""""""""""""
set undolevels=1000              "How many undos
set undoreload=10000             "number of lines to save for undo
if v:version >= 730
    set undofile                 "keep a persistent backup file
    set undodir=~/.vim/vimundo/
endif

"""""""""""""""""""""""""""""""""""""""""
" 自定义快捷键
"""""""""""""""""""""""""""""""""""""""""
" 全选
map <leader>a ggVG

" 选中状态下 Ctrl+c 复制
nnoremap <leader>p "+gp
nnoremap <leader>y "+y
vnoremap <leader>y "+y



" 普通模式(Nomal Mode)下快捷键
"""""""""""""""""""""""""""""""""""""""""
" 命令行模式(Command Line Mode)下快捷键
"""""""""""""""""""""""""""""""""""""""""
cnoremap <C-a> <Home>
cnoremap <C-e> <End>



" 功能键
"""""""""""""""""""""""""""""""""""""""""
" F6语法高亮快捷键
nnoremap <Leader>fs :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>



" 多窗口标签快捷键
"""""""""""""""""""""""""""""""""""""""""
" 在多个窗口间切换
map <Leader>wh <C-W>h
map <Leader>wj <C-W>j
map <Leader>wk <C-W>k
map <Leader>wl <C-W>l
map <Leader>wq :q<cr>

" Disbale paste mode when leaving insert mode
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/



"""""""""""""""""""""""""""""""""""""""""
" 主题颜色显示
"""""""""""""""""""""""""""""""""""""""""
" 修改主题和颜色展示
set background=dark
set t_Co=256
colorscheme gruvbox
set guifont=consolas:h11
"""""""""""""""""""""""""""""""""""""""""



" gvim配置
"""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
	source $VIMRUNTIME/delmenu.vim " 解决菜单乱码
	source $VIMRUNTIME/menu.vim " 解决菜单乱码
	language messages zh_CN.utf-8 " 解决consle输出乱码
	au GUIEnter * simalt ~x " 窗口启动时自动最大化
	"set guioptions-=m " 隐藏菜单栏
	set guioptions-=T " 隐藏工具栏
	set guioptions-=L " 隐藏左侧滚动条
	set guioptions-=r " 隐藏右侧滚动条
	set guioptions-=b " 隐藏底部滚动条
	"set showtabline=0 " 隐藏Tab栏
    "set gcr=a:block-blinkon0
endif


"""""""""""""""""""""""""""""""""""""""""
" 自定义的函数
"""""""""""""""""""""""""""""""""""""""""
" 相对绝对行号转换
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
map <leader>fn :call NumberToggle()<cr>


" 突出显示当前行列转换
function! CusorCulLineToggle()
  if(&cursorcolumn == 1)
    set nocursorcolumn
    set nocursorline
  else
    set cursorcolumn
    set cursorline
  endif
endfunc
map <leader>fc :call CusorCulLineToggle()<cr>



"自动回到档案最后读取位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif



" 快速记日志（php）
map <Leader>l :call ErrorLog()<cr>
function! ErrorLog()
	let errorLogLine=line(".") + 1
    call append(line("."),"error_log('".expand("%:t").":".errorLogLine." --- .log '.date('Y-m-d H:i:s').',Brook3:'.var_export($Brook3,1).\"\\n\",3,ROOT_DIR.'/log/Brook3.txt');")
endf



" 快速添加版权和作者信息
map <Leader>ft :call TitleDet()<cr>
function! AddTitle()
    call append(0,"\#!/usr/bin/env bash")
    call append(1,"# ******************************************************")
    call append(2,"# Author       : Brook3")
    call append(3,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(4,"# Email        : Brook3@foxmail.com")
    call append(5,"# Filename     : ".expand("%:t"))
    call append(6,"# Description  : ")
    call append(7,"# ******************************************************")
    echohl WarningMsg | echo "Successful in adding copyright." | echohl None
endf
 
function! UpdateTitle()
     normal m'
     execute '/# Last modified/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
     normal ''
     normal mk
     execute '/# Filename/s@:.*$@\=":\t".expand("%:t")@'
     execute "noh"
     normal 'k
     echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

function! TitleDet()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction
