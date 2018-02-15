" ------------------------------------------------------------------------
" File: command.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: command配置文件
" Last Modified: 2013-07-02
" -------------------------------------------------------------------------

" TODO: functions.vim
" source $VIMFILES/conf/functions.vim
"com! -nargs=0 Gt call GetTrans()
"com! -nargs=? Ec call Econf(<args>)
" vim:fdm=marker:fdc=1

"自动任务
" TODO:  寻找 session,info 插件
"autocmd VimLeave * :call s:SaveSession()
"autocmd VimEnter * :call s:ReadSession()

" 代码自动补全
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete

" html/css 自动打开 Emmet, (use if set g:use_emmet_install_global=0)
autocmd FileType html,css EmmetInstall

autocmd BufNewFile,BufRead *.js :call s:JavascriptIDE()

function! s:JavascriptIDE()
    setlocal autoindent
    setlocal smartindent
    setlocal listchars=tab:\|\ ,trail:-
    setlocal tabstop=2
    setlocal expandtab " 使用空格替代缩进
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction

" typescript自动设置
autocmd BufNewFile,BufRead *.ts :call s:TypescriptIDE()

function! s:TypescriptIDE()
    setlocal autoindent
    setlocal smartindent
    setlocal listchars=tab:\|\ ,trail:-
    setlocal tabstop=2
    setlocal expandtab " 使用空格替代缩进
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction


" html/jinja2 编辑环境配置
autocmd BufNewFile,BufRead *.html,*.htm,*.erb :call s:HtmlIDE()

function! s:HtmlIDE()
    setlocal ft=jinja
    setlocal autoindent
    setlocal smartindent
    setlocal listchars=tab:\ \ ,trail:-
    setlocal tabstop=2
    setlocal expandtab " 使用空格替代缩进
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction

" golang 环境配置
autocmd BufNewFile,BufRead *.go :call s:GolangIDE()
autocmd BufWritePre *.go :Fmt
function! s:GolangIDE()
    setlocal filetype=go
    setlocal listchars=tab:\ \ ,trail:-
    setlocal tabstop=2
    setlocal expandtab " 使用空格替代缩进
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction


" for css file edit
autocmd BufNewFile,BufRead *.css :call s:CssIDE()

function! s:CssIDE()
    setlocal autoindent
    setlocal smartindent
    setlocal listchars=tab:\ \ ,trail:-
    setlocal expandtab
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction

" yml/yaml文件编辑
autocmd BufNewFile,BufRead *.yml,*.yaml :call s:YamlIDE()

function! s:YamlIDE()
    setlocal autoindent
    setlocal smartindent
    setlocal listchars=tab:\ \ ,trail:-
    setlocal expandtab
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal wrap
endfunction

" php 编辑环境配置
autocmd BufNewFile,BufRead *.php :call s:PhpIDE()
autocmd FileType php :call s:PhpIDE()
function! s:PhpIDE()
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction

" python 编辑环境配置
autocmd BufNewFile,BufRead *.py,*.pyw :call s:PythonIDE()
autocmd FileType python set omnifunc=pythoncomplete#Complete
function! s:PythonIDE()
    setfiletype python
    " TODO: temp fix the docview plugin add . to keyword, which make search hard to use
    setlocal iskeyword=@,48-57,_,192-255
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction

" c/h 编辑环境配置
autocmd BufNewFile,BufRead *.c,*.h :call s:CHIDE()
function! s:CHIDE()
    set autoindent
    set smartindent
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" objective-c 编辑环境配置
autocmd BufNewFile,BufRead *.m :call s:CobjIDE()
function! s:CobjIDE()
    set filetype=objc
    set autoindent
    set smartindent
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction


" makefile 编辑环境配置
autocmd BufNewFile,BufRead Makefile,makefile,MAKEFILE :call s:MakefileIDE()
function! s:MakefileIDE()
    set autoindent
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set wrap
endfunction

" markdown 编辑设置
autocmd BufNewFile,BufRead *.md set ft=md


" ruby 编辑环境配置
autocmd BufNewFile,BufRead *.rb, :call s:RubyIDE()
function! s:RubyIDE()
    setfiletype ruby
    set autoindent
    set smartindent
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set wrap
endfunction

" --------------------------------------------------
" [参考线切换] {{{
" --------------------------------------------------
fu! ReferenceLine(t)
    let ccnum = &cc
    if ccnum == '' | let ccnum = 0 | en
    let csw = &sw
    if a:t == 'add'
        let ccnum = ccnum + csw
        exec "setl cc=".ccnum
    elsei a:t == 'sub'
        let ccnum = ccnum - csw
        if ccnum >= 0 | exec "setl cc=".ccnum | en
    en
endf
nn <silent> <A-u> :call ReferenceLine('sub')<CR>
nn <silent> <A-o> :call ReferenceLine('add')<CR>
" }}}

"------------------------------------------------------------------
" [font resize] {{{1
"------------------------------------------------------------------
"
"let g:hr_fnt_types = ['Menlo Regular']
let g:hr_fnt_type = "Menlo Regular"
let g:hr_fnt_sizes = ['12', '14', '18', '24', '36']
let g:hr_fnt_index = 3
let g:hr_fnt_size = 24

function! CycleFont()
    let g:hr_fnt_index = (g:hr_fnt_index + 1) % len(g:fnt_sizes)
    let g:fnt_size = g:hr_fnt_sizes[g:hr_fnt_index]
    call ResetFont()
endfunction

function! ResetFont()
    if has('gui_running')
        exe ':set guifont=' . g:hr_fnt_type . 'h:' . string(g:hr_fnt_sizes[g:hr_fnt_index])
    endif
endfunction

function! FontLarge()
    let g:hr_fnt_index = g:hr_fnt_index + 1
    if g:hr_fnt_size > len(g:hr_fnt_sizes)
        echom "font cannot be larger any more"
        exit
    endif
    let g:fnt_size = g:hr_fnt_sizes[g:hr_fnt_index]
    call ResetFont()
endfunction

function! FontSmall()
    let g:hr_fnt_index = g:hr_fnt_index - 1
    if g:hr_fnt_size < 0
        echom "font cannot be smaller any more"
        exit
    endif
    let g:fnt_size = g:hr_fnt_sizes[g:hr_fnt_index]
    call ResetFont()
endfunction

nnoremap <leader>+ :call FontLarge()<CR>
nnoremap <leader>- :call FontSmall()<CR>
" 1}}}

