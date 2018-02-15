" ------------------------------------------------------------------------
" File: plugin.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 配件配置文件
" Last Modified: 2013-07-02
" TOOD: 考虑每个插件单独配置，最后统一source
" -------------------------------------------------------------------------

" [netrw相关配置] {{{1
" =========================================================================
" 支持ftp/ssh等协议编辑远程文件的插件
let g:netrw_home = "~/.vim/temp/netrw"

" 1}}}

" [Emmet相关配置] {{{1
" =========================================================================
let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'variables': {
\       'lang': 'en',
\   },
\   'html': {
\       'filters': 'html',
\       'expandos': {},
\       'default_attributes': {
\           'a': {'href': '#'},
\           'script': [{'type': 'text/javascript'}],
\           'link': [{'rel': 'stylesheet'}, {'href': ''}],
\       },
\       'aliases': {
\           'scp': 'script',
\           'bq': 'blockquote',
\           'obj': 'object',
\           'hd': 'header',
\           'st': 'section',
\       },
\       'empty_element_suffix': ' />',
\   },
\   'css': {
\       'filters': 'fc',
\   },
\}
" only insert mode
let g:user_emmet_mode='a'
" only use for html/css
let g:user_emmet_install_global = 1

" key bind
let g:user_emmet_leader_key  = '<C-y>'
let g:user_emmet_expandabbr_key = '<M-;>'
let g:user_emmet_next_key = '<C-y>n'
let g:user_emmet_prev_key = '<C-y>p'

"  1}}}

"------------------------------------------------------------------
" [CmdlineComplete相关配置] {{{1
"------------------------------------------------------------------
"cmap <unique> <silent> <M-p> <Plug>CmdlineCompleteBackward
"cmap <unique> <silent> <M-n> <Plug>CmdlineCompleteForward
" 1}}}

" [NERDTree相关配置] {{{1
" ==================================================================
" TODO: doc reaad and <f2>
" 映射切换按键
map <silent> <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
nn <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
imap <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
" nerdtree ignore
let NERDTreeIgnore=['\.o$']
let NERDTreeIgnore+=['\.pyc$']
let NERDTreeIgnore+=['\.bak$']
let NERDTreeIgnore+=['\.elc']
let NERDTreeIgnore+=['^ctags$']
let NERDTreeIgnore+=['^etags$']
let NERDTreeIgnore+=['^__pycache__$']
let NERDTreeIgnore+=['^filenametags$']
let NERDTreeIgnore+=['^cscope\.\(files\|in\.out\|out\|po.out\)$']
" more colourful
let NERDChristmasTree=1
" set nerdtree bookmark file path
let NERDTreeBookmarksFile=expand('~')."/.vim/temp/nerdtree.bookmarks"
" show bookmarks on startup
let NERDTreeShowBookmarks=1
" not show hidden file on startup
let NERDTreeShowHidden=0
" show line number on startup
let NERDTreeShowLineNumbers=1
" nerdtree positioin
let NERDTreeWinPos="left"
" nerdtree width
let NERDTreeWinSize = 35

" 1}}}

" [Conque相关配置] {{{1
" =================================================
" Conque指定Python版本
let g:ConqueTerm_PyVersion=2
" 取消警告信息
let g:ConqueTerm_StartMessages = 1
" TODO: setlocal listchars
" 1}}}
" --------------------------------------------------
"  [Riv相关配置]{{{1
" -------------------------------------------------
" set never fold
let g:riv_fold_level=0
"1}}}
" --------------------------------------------------
"  [Tagbar相关配置]{{{1
" --------------------------------------------------
" taglist的替代插件
nmap <F4> :TagbarToggle<CR>
imap <F4> <Esc>:TagbarToggle<CR>
nmap <C-F4> :TagbarTogglePause<CR>
imap <C-F4> :TagbarTogglePause<CR>
" default sort tags by order in source file
let g:tagbar_sort=0
" show line number<1-absolute, 2-relative>
let g:tagbar_show_linenumbers=1
" default not fold the tags
let g:tagbar_fold_level=99
" TODO Tagbar golang gotags支持
let g:tagbar_type_go = {
\   'ctagstype': 'go',
\   'kinds': [
\       'p:package',
\       'i:imports:1',
\       'c:constants',
\       'v:variables',
\       't:types',
\       'n:interfaces',
\       'w:fields',
\       'e:embedded',
\       'm:methods',
\       'r:constructor',
\       'f:functions',
\   ],
\   'sro': '.',
\   'kind2scope': {
\       't': 'ctype',
\       'n': 'ntype',
\   },
\   'scope2kind': {
\       'ctype': 't',
\       'ntype': 'n',
\   },
\   'ctagsbin': 'gotags',
\   'ctagsargs': '-sort -silent'
\}
" 支持elixir
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.', 'kind2scope': {'m': 'modules'}, 'scope2kind': {'modules': 'm'}}
"1}}}
" -------------------------------------------------
"  [TagmaTask插件配置]{{{1
" -------------------------------------------------
" not jump to the first task when startup
let g:TagmaTasksJumpTask=0
" the work as task
let g:TagmaTaskTokens = ['FIEXME', 'TODO', 'NOTE', 'WARNING']
" list all tasks under current directions
nn <leader>tP :TagmaTasks **/*.py<CR>
"1}}}
" -------------------------------------------------
"  [gtrans配置]{{{1
" -------------------------------------------------
" key to translate zh word to en
nn <leader>gT :call Gtrans('en')
vn <leader>gV :call GetTransVis('en')
"1}}}
" -------------------------------------------------
"  [grep配置]{{{1
" -------------------------------------------------
" TODO: conf and use
"1}}}
" -------------------------------------------------
"  [a.vim配置]{{{1
" -------------------------------------------------
" not create one when header file not exists.
let g:alternateNoDefaultAlternate = 1
" set the search path
let g:alternateSearchPath = "abs:/usr/include/x86_64-linux-gnu,sfr:../lib,sfr:../include,srf../inc"
"1}}}
" --------------------------------------------------
" [ lookupfile ] {{{1
" --------------------------------------------------
" TODO: note org
"let g:LookupFile_TagExpr ='"./filenametags"'
" 至少输入两个字符才开始查找
let g:LookupFile_MinPatLength = 2
" 不保存上次查找字符串
let g:LookupFile_PreserveLastHistory = 0
" 保存查找历史 LookupFile
let g:LookupFile_PreservePatternhistory = 1
" 取消默认<f5>按键绑定
let g:LookupFile_DisableDefaultMap = 1
" 回车打开第一个匹配项目
let g:LookupFile_AlwaysAcceptFirst = 1
" 不允许创建不存在的文件
let g:LookupFile_AllowNewFiles = 0
" 设置tag 文件的名字
if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif

" 设置查找忽略大小写
function! LookupFile_IgnoreCaseFunc(pattern)

    let _tags = &tags
    try 
        let $tags = eval(g:LooupFile_TagExpr)
        let newpattern ='\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echoh1 ErrorMsg | echo "Exception:" . v:exception | echoh1 NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
"let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
" 映射LookupFile 为,lk
nmap <leader>lt :LUTags<cr>
" 映射LuBufs为,ll
nmap <leader>lb :LUBufs<cr>
" 映射LUWalk为,lw
nmap <leader>lw :LUWalk<cr>
"1}}}
" --------------------------------------------------
" [ ctags配置] {{{1
" --------------------------------------------------
" TODO: project 相关
if filereadable('./tags')
   set tags+=./tags
endif
if filereadable('./ctags')
   set tags+=./ctags
endif
"set tags+=~/.vim/tagfiles/scrapy.0.16.4.tags
"set tags+=~/.vim/tagfiles/sqlachemy.0.8.1.tags
"set tags+=~/.vim/tagfiles/selenium.2.33.0.tags
"1}}}
" --------------------------------------------------
" [ minibufExpl配置] {{{1
" --------------------------------------------------
" 终端下禁用
if !has('gui_running')
    let g:loaded_minibufexplorer = 1
endif
" minibuf splits
let g:miniBufExplSplitBelow = 0
" max lines
let g:miniBufExplmaxSize = 3
" num of buf to show minibufexpl, big to deny adn start by keymap
let g:miniBufExplorerMoreThanOne = 35
" enbale [hjkl] key
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
" tab to switch
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" not reopen
let g:miniBufExplCloseOnSelect = 1
" for debug
"let g:miniBufExplorerDebugLevel = 0/4/10
" 按键绑定
map <Leader>mt :TMiniBufExplorer<cr>
map <leader>mm :MiniBufExplorer<cr>
map <leader>mu :UMiniBufExplorer<cr>
"1}}}
"---------------------------------------------------
"[ ctrlp配置 ] {{{1
"---------------------------------------------------
" window positon and size
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" jump method
let g:ctrlp_switch_buffer = 'Et'
" how-to find work-dir
let g:ctrlp_working_path_mode = 'ra'
" cache dir
let g:ctrlp_use_caching = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/temp/ctrlp_cache'
" clear cache
let g:ctrlp_clear_cache_on_exit = 1
" show hide file/dir
let g:ctrlp_show_hidden = 0
" show hidden file
let g:ctrlp_show_hidden = 1
" ignore files
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll|pyc)$',
            \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            \ }


"1}}}
" --------------------------------------------------
" [ UltiSnips配置 ] {{{1
" --------------------------------------------------
" ultisnips回自动监测has(python) or has(python3), 监测失败可以自己手动设置
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit = "horizontal"
" keys
nn <M-F7> :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsListSnippets = "<f7>"
let g:UltiSnipsJumpForwardTrigger = "<C-k>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

augroup ultisnips_sub
    autocmd FileType jinja :UltiSnipsAddFiletypes jinja.html
augroup END

" 1}}}

"-------------------------------------------------------------------------
" [ neocomplcache 设置 ]{{{1
"-------------------------------------------------------------------------
" TODO: not finish yet
"启动 neocomplcache
let g:neocomplcache_enable_at_startup = 1
" 缓存dir
let g:neocomplcache_temporary_dir = "~/.vim/temp/neocaches"
" 补全弹出窗list-max
let g:neocomplcache_max_list = 18
" 补全不忽略大小写
"let g:neocomplcache_enable_ignore_case = 0
" smart case
let g:neocomplcache_enable_smart_case = 1
" 不自动弹出不全列表
"let g:neocomplcache_disable_auto_complete = 1
" 根据文件类型配置 字典文件
let g:neocomplcache_dictionary_filetype_lists = {
\   'default': '',
\   'vishell': '',
\   'css': '',
\   'php': '',
\   'python': $VIMFILES."/dict/python.dict",
\}
" 自定义source
if !exists("g:neocomplcache_sources_list")
    let g:neocomplcache_sources_list = {}
endif
let g:neocomplcache_sources_list.python = [
\   "buffer_complete",
\   "filename_complete",
\   "dictionary_complete",
\   "tags_complete",
\]
" fix the . crash error
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = ''
let g:neocomplcache_omni_patterns.ruby = ''
" 自动补全的最小输入控制
let g:neocomplcache_auto_completion_start_length = 2
" use smartcase
let g:neocomplcache_enable_smart_case = 1
" set the skip auto_completion time
let g:neocomplcache_skip_auto_completion_time = 0.5
" use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1
" set minunum syntacx keyword length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" authocomplPop like behavior
let g:neocomplcache_enable_auto_select = 0
" when you input ho-a, neocomplecache will select candidate 'a'.
let g:neocomplcache_enable_quick_match = 1
" define keyword
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" TODO:按键绑定
ino <expr> <A-1> neocomplcache#start_manual_complete()
ino <expr> <A-g> neocomplcache#close_popup()
ino <expr> <C-g> neocomplcache#cancel_completion()
"ino <expr> <C-z> neocomplcache#undo_completion()
"1}}}
" ------------------------------------------------------
" [ autopair配置 ]{{{1
" ------------------------------------------------------
" TODO: add new autopairs and buffer local pairs
" TODO: 按键优化, wrap/jump
" let g:AutoPairs = 
" let b:AUtoPairs = 
" key to toggle the auto_pair on/off
let g:AutoPairsShortcutToggle = "<leader>pt"
" key to jump the next closed pair
let g:AutoPairsShortcutJump = "<leader>pj"
" key to fast wrap the auto-pair
let g:AutoPairsShortcutFastWrap = "<leader>pp"
"1}}}
" --------------------------------------------------------------
"  [ python-mode-klen配置 ]{{{1
" --------------------------------------------------------------
let g:pymode = 1
" trim unused white spaces on save
let g:pymode_trim_whitespaces = 1
" pymode folding
let g:pymode_folding = 1
" enable pymode-motion
let g:pymode_motion = 1
" keys to view python doc
let g:pymode_doc_key = "<leader>qd"
" keys to run python
let g:pymode_run_key = "<leader>qr"
" quick key to break code
let g:pymode_breakpoint_bind = "<leader>qb"

" set pylint checker
let g:pymode_lint_checker = "pyflaskes,pep8,mccabe"
" disbale pymode-lint auto checker
let g:pymode_lint_on_write = 0
" disable usual errors check
let g:pymode_lint_select = ""
" not jump to the first error
let g:pymode_lint_jump = 0
" use quickfix for pylint check
let g:pymode_lint_hold = 1
" set the check output min and max height
let g:pymode_lint_minheight = 12
let g:pymode_lint_maxheight = 14
" key for pylint
nn <leader>ql :PymodeLint<CR>
" key for auto pep8 fix
nn <Leader>qa :PymodeLintAuto<CR>
" key for Pylint toggle
nn <Leader>qt :PymodeLintToggle<CR>

" rope complete keys
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autocomplete_map = "<A-2>"
let g:pymode_rope_lookup_project = 0
"1}}}
"------------------------------------------------------------------
" [python my-virtualenv配置] {{{1
"------------------------------------------------------------------
noremap <leader>pv :VirtualEnvActivate<space><C-D>
" 1}}}

" -------------------------------------------------
"  [ syntastic配置 ] 多语言语法检查{{{1
" --------------------------------------------------
" check on open and save
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
" use all checker at once
let g:syntastic_aggregate_errors = 1
" auto open error window while errors
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
" set sign symbol
let g:syntastic_error_symbol = 'EE'
let g:syntastic_style_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'WW'
let g:syntastic_style_warning_symbol = 'W>'
" never mouse
let g:syntastic_enable_balloons = 0
" use highlight
let g:syntastic_enable_highlighting = 0
" error window height
let g:syntastic_loc_list_height = 5

" always active, use toggle to passive
let g:syntastic_mode_map = {
            \   'mode': 'active',
            \   'active_filetypes': [],
            \   'passive_filetypes': []}

" set the checker
let g:syntastic_c_checkers = ['gcc', 'make', 'cppcheck']
let g:syntastic_javascript_checkers = ['jshint', "eslint"]
"let g:syntastic_python_checkers = ['python', 'pylint', 'pep8', 'flake8']
let g:syntastic_python_checkers = ['pylint']
" elixir checker
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']

" not working now. set lua checker
let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"

" TODO keymap


"1}}}
"  [ cscope配置 ] {{{1
" --------------------------------------------------
" TODO: read doc and start to use
if has("cscope")
    set csprg=/usr/bin/cscope
    set cst
    set nocscopeverbose
    if filereadable("./cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set cscopeverbose
    " 设置是否使用quickfix
    set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
    " 设置文件查找顺序
    set cscopetag
    nmap <A-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    " open quickfix bymyself, it is one error now
    nmap <C-\>o :copen<CR>
endif
"1}}}
"------------------------------------------------------------------
" [YouCompleteMe] {{{1
"------------------------------------------------------------------
" complete for typescript
if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" 1}}}

" ----------------------------------------------------------
"  [ evernote配置 ]{{{1
" TODO: try and conf and 优化
let g:evervim_devtoken='S=s240:U=1cd8982:E=146e15334f5:C=13f89a208f9:P=1cd:A=en-devtoken:V=2:H=a8cac25918a056c4e1b1243672ec7e76'
"1}}}
" -----------------------------------------------------------
"  [android开发配置]{{{1
" -----------------------------------------------------------
let g:adtVimAndroidPath = "/usr/local/app/adt64/sdk"
"  1}}}

" -----------------------------------------------------------
" [javascirpt-libraries-syntax.vim]配置{{{1
" -----------------------------------------------------------
let g:used_javascript_libs = 'underscore,backbone,jQuery'
" 1}}}

"------------------------------------------------------------------
" [ack.vim配置] {{{1
"------------------------------------------------------------------
" use ag instead of ack for more speed
let g:ackprg = "ag --vimgrep --smart-case"
cnoreabbrev ag Ack!
cnoreabbrev aG Ack!
cnoreabbrev Ag Ack!
cnoreabbrev AG Ack!
" 1}}}

"------------------------------------------------------------------
" [vim-dotoo配置] {{{1
"------------------------------------------------------------------
let g:dotoo#agenda#files = [expand('~/.vim/agendas/works.dotoo'), expand("~/.vim/agendas/home.dotoo"), expand("~/.vim/agendas/dotoo.dotoo")]
let g:dotoo#capture#refile = expand('~/.vim/refile.dotoo')
" 1}}}


"------------------------------------------------------------------
" [neomake config] {{{1
"------------------------------------------------------------------
"autocmd! BufWritePost * NeoMake
" 1}}}

"------------------------------------------------------------------
" [vim-gutentags] {{{1
"------------------------------------------------------------------
let g:gutentags_cache_dir='~/.tags_cache'
" 1}}}

"------------------------------------------------------------------
" [vimfiler] {{{1
"------------------------------------------------------------------
" use as default
let g:vimfiler_as_default_explorer = 1
" 1}}}


"------------------------------------------------------------------
" [Alchemist.vim] {{{1
"------------------------------------------------------------------
let g:alchemist_tag_disable = 1
" 1}}}
"
"------------------------------------------------------------------
" [nyaovim-markdown-preview config] {{{1
"------------------------------------------------------------------
" auto preview while edit markdown-file
let g:markdown_preview_auto = 1
" use default mapping
let g:markdown_preview_no_default_mapping = 0
" TODO it not work now. mapping for it
"augroup marodown-preview-config
"    autocmd!
"    autocmd BufNewFile,BufRead *.md call s:hr_markdown_preview_config()
"augroup END
"function s:hr_markdown_preview_config()
"    nnoremap <buffer><silent> <localleader>np :<C-u>StartMarkdownPreview<CR>
"    nnoremap <buffer><silent> <localleader>ns :<C-u>StopMarkdownPreview<CR>
"    nmap <buffer><silent> <localleader>nj <Plug>(markdown-preview-scroll-up)
"    nmap <buffer><silent> <localleader>nk <Plug>(markdown-preview-scroll-down)
"endfunction
" 1}}}

"------------------------------------------------------------------
" [Unite/Denite config] {{{1
"------------------------------------------------------------------
call unite#custom#profile('default', 'context', {
            \    'start_inesrt': 1,
            \    'complete': 1,
            \    'direction': 'botright',
            \    'winheight': 10,
            \})
nnoremap <leader>uab :UniteBookmarkAdd<space>
nnoremap <leader>ub :<C-u>Unite buffer<CR>
nnoremap <leader>uB :<C-u>Unite bookmark<CR>
nnoremap <leader>um :<C-u>Unite menu<CR>
nnoremap <leader>uM :<C-u>Unite mapping<CR>
nnoremap <leader>ur :<C-u>Unite file_mru<CR>
if has('nvim')
    nnoremap <leader>uf :Denite file_rec<CR>
else
    nnoremap <leader>uf :Unite file_rec<CR>
endif
augroup unitegroup
    autocmd!
    autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
    nnoremap <silent><buffer><expr> F unite#do_action('vimfiler')
    nnoremap <silent><buffer><expr> s unite#do_action('split')
    inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
    nnoremap <silent><buffer><expr> cd unite#do_action('lcd')
endfunction

