" ------------------------------------------------------------------------
" File: set.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 选项配置文件
" Last Modified: 2013-07-02
" TODO: 分类别 组合
" -------------------------------------------------------------------------

" --------------------------------------------------
" [基础配置选项开启] {{{1
" --------------------------------------------------
" 去掉vi兼容模式
set nocompatible
" 设置vim 启动窗口位置和大小
"winpos 961 24
"set lines=62 columns=119
" 检查文件类型 载入对应的ftplugin vim脚本
" ----------------------------------------------------------
" [文件类型/语法高亮相关]{{{1
" ----------------------------------------------------------
filetype plugin on
filetype on
" 开启自动缩进
filetype indent on
" 高亮源代码
syntax on
" 设置高亮关键字显示
syntax enable
"1}}}

" -----------------------------------------------------------
" [显示相关]{{{1
" -----------------------------------------------------------
" 设置补全popup窗口最大高度
set pumheight=8
" 右下角显示光标位置状态行
set ruler
" 显示行号
set number
set relativenumber
" 行间距
set linespace=2
" 行高亮
set cursorline
" 自动scroll
set scrolloff=5
" 色彩高亮
"colorscheme desert
"if has('gui_running')
"    colorscheme tabula
"endif
" nvim settings
"colorscheme tabula
set background=dark
colorscheme gruvbox

" gui font size
if has('macunix')
    set guifont=Consolas:h24
else
    set guifont=consoles:h21
endif


" 设置命令行高度
set cmdheight=1
"1}}}
" 代码提示支持
set ofu=syntaxcomplete#Complete
" 设置是否可使用删除键
set backspace=indent,eol,start
" 设置split below
"set splitbelow
" expandtab
set expandtab

set nofoldenable
set foldmethod=marker

" 使用terminal去掉系统弹出框
autocmd VimEnter * :call s:SetGuioptions_for_mac()
function! s:SetGuioptions_for_mac()
    set guioptions+=c
endfunction

"-------------------------------------------------------
" [ 搜索相关 ] {{{1
"-------------------------------------------------------
" 搜索智能大小写匹配
set ignorecase smartcase
" 查询自匹配
"set incsearch
" 搜索高亮
set hls " highlightsearch
"1}}}

"------------------------------------------------------------
" [ session与info 配置相关 ]{{{1
" TODO: 研究
set sessionoptions=curdir,resize,folds,tabpages,buffers
" 1}}}

" --------------------------------------------------
" [缩进、换行] {{{1
" --------------------------------------------------
" 实现c缩进
set cin
" 设置折行
set wrap
" 自动缩进
set ai " autoindent
" 智能对齐
set si " smartindent
" 设置制表符宽度
set tabstop=4
" Alt组合键不映射在菜单上
set winaltkeys=no
" 缩进宽
set shiftwidth=4
" 设置软缩进
set softtabstop=4
" 显示tab和空格
set list
" 设置tab和空格样式
set listchars=tab:\|\-,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /\t/
" 设置换行模式
set ffs=unix,dos
set backspace=indent,eol,start
" 1}}}

" --------------------------------------------------
" [自动完成] {{{1
" --------------------------------------------------
" add dictionary complete
set complete+=k
" not show preview window and use longest pop menu
set completeopt=longest,menu
set dictionary += "~/.vim/dict/python.dict"
"if has("autocmd")
   "autocmd FileType python set dictionary = "~/.vim/dict/python.dict"
"endif
" 1}}}

" --------------------------------------------------
" [文件编码] {{{1
" --------------------------------------------------
" 设置文件尝试编码
set fileencodings=utf-8,ucs-bom,gbk,cp936,cp950,latin1
" 设置默认文件编码
set fileencoding=utf-8
set termencoding=utf-8
" 1}}}

" --------------------------------------------------
" [文件目录、历史记录] {{{1
" --------------------------------------------------
" 设置命令行历史记录
set history=50
" 文件备份
set nobackup
"set writebackup
" 备份目录
"set backupdir = "~/.vim/temp/back"
" 忽略备份
"set backupskip += "*.log, *.pyc, *.tmp"
" 设定临时文件目录
"set directory=$VIMFILES/temp
" 1}}}

" --------------------------------------------------
" [GUI配置] {{{1
" --------------------------------------------------
if has('gui_running')
	" 不显示菜单栏
	set go=
	set winaltkeys=no
endif
" vim:fdm=marker:fdc=1
