"------------------------------------------------------------------
" File: keymap.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2017-12-28
" Description: my keymap in nvim
"------------------------------------------------------------------

"------------------------------------------------------------------
" [use <space> as leaderkey. <;> as localleaderkey] {{{1
"------------------------------------------------------------------
let g:mapleader = " "
let g:maplocalleader = ';'
" release keymappings prefixes for <space> to work
nnoremap <Space> <Nop>
xnoremap <Space> <Nop>
nnoremap , <Nop>
xnoremap , <Nop>
nnoremap ; <Nop>
xnoremap ; <Nop>
"nnoremap m <Nop>
"xnoremap m <Nop>

" 1}}}
"------------------------------------------------------------------
" [keymap for toggle somethings] {{{1
"------------------------------------------------------------------
nnoremap <leader>tr :set relativenumber!<CR>
nnoremap <leader>tn :set number!<CR>
nnoremap <leader>tw :set wrap!<CR>
" 1}}}
"------------------------------------------------------------------
" [keymap for termial in neovim] {{{1
"------------------------------------------------------------------
if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <M-n> <C-\><C-n>:tabprevious<CR>
    tnoremap <M-n> <C-\><C-n>:tabnext<CR>
    tnoremap <M-h> <C-\><C-n><C-w>h
    tnoremap <M-j> <C-\><C-n><C-w>j
    tnoremap <M-k> <C-\><C-n><C-w>k
    tnoremap <M-l> <C-\><C-n><C-w>l
endif
" 1}}}



" --------------------------------------------------
" [tab相关] {{{1
" --------------------------------------------------
nnoremap <M-x> :tabclose<CR>
nnoremap <leader>tc :tabnew<CR>
inoremap <M-x> <Esc>:tabclose<CR>
inoremap <M-c> <Esc>:tabnew<CR>

nnoremap <M-n> :tabprevious<CR>
nnoremap <M-m> :tabnext<CR>
inoremap <M-n> <Esc>:tabprevious<CR>
inoremap <M-m> <Esc>:tabprevious<CR>

nnoremap <leader>t1 :tabnext 1<CR>
nnoremap <leader>t2 :tabnext 2<CR>
nnoremap <leader>t3 :tabnext 3<CR>
nnoremap <leader>t4 :tabnext 4<CR>
inoremap <C-\>t1 :tabnext 1<CR>
inoremap <C-\>t2 :tabnext 2<CR>
inoremap <C-\>t3 :tabnext 3<CR>
inoremap <C-\>t4 :tabnext 4<CR>

" 1}}}
" --------------------------------------------------
" [窗口操作] {{{1
" --------------------------------------------------

nnoremap <M-=> <C-w>=
nnoremap <M--> 3<C-w>-
nnoremap <M-+> 3<C-w>+

nnoremap <M-h> <C-w>h
nnoremap <M-l> <C-w>l
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-W>k
inoremap <M-h> <Esc><C-w>h
inoremap <M-h> <Esc><C-w>l
inoremap <M-j> <Esc><C-w>j
inoremap <M-k> <Esc><C-W>k

nnoremap <M-,> 3<C-w><
nnoremap <M-.> 3<C-w>>

" scroll other window
nnoremap <leader>sh <M-h>Mzt
nnoremap <leader>sj <M-j>Mzt
nnoremap <leader>sk <M-k>Mzt
nnoremap <leader>sl <M-l>Mzt

" 1}}}
" --------------------------------------------------
" [复制粘贴] {{{1
" --------------------------------------------------

vnoremap <M-y> "+y
nnoremap <M-p> "+p
inoremap <M-p> <Esc>"+pa

" 命令行下粘贴
cnoremap <M-p> <C-R>+
"inoremap <script> <M-p> paste#paste_cmd['i']
"vnoremap <script> <M-p> paste#paste_cmd['v']
" 1}}}
" -------------------------------------------------
" [vim ConqueTerm快捷键]{{{1
" -------------------------------------------------
nn <leader>Bb :tabnew<CR>:ConqueTerm bash<CR>
nn <leader>bb :botright 15split<CR>:ConqueTerm bash<CR>
ino <leader>Bb <Esc>:tabnew<CR>:ConqueTerm bash<CR>
ino <Leader>bb <Esc>:botright 15split<CR>:ConqueTerm bash<CR>
nn <leader>Bp :tabnew<cr>:ConqueTerm ipython<CR>
nn <leader>bp :botright 15split<CR>:ConqueTerm ipython<CR>
ino <leader>Bp <Esc>:tabnew<cr>:ConqueTerm ipython<CR>
ino <leader>bp <Esc>:botright 15split<CR>:ConqueTerm ipython<CR>
" 1}}}
" [快捷按鍵] {{{1
" ===============
ino <M-o> <ESC>o
ino <M-S-o> <ESC>O
ino <C-o> <CR><ESC>O
ino <M-k> <ESC>O
ino <M-j> <CR>
ino <M-n> <Down>
ino <M-m> <Up>
nn <leader>hh :noh<CR>
" CTRL-A is Select all(CTRL-A实现全选)
"noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
"onoremap <C-A> <C-C>gggH<C-O>G
"snoremap <C-A> <C-C>gggH<C-O>G
"xnoremap <C-A> <C-C>ggVG
" 1}}}
" [normal-mode 下防emacs快捷键]
" =============================
"TODO: consider it.
"ino <C-n> <Down>
"ino <C-p> <Up>
ino <M-e> <Esc>$a
ino <M-a> <Esc>0i
ino <C-f> <Right>
ino <C-b> <left>
" --------------------------------------------------
" [宏执行热键] {{{1
" --------------------------------------------------
" TODO:
" 1}}}
" --------------------------------------------------
" [快捷文件操作] {{{1
" --------------------------------------------------
" TODO: 优化成 项目目录列表
" 快捷生成ctags文件
"nn <leader>cr :!ctags -R `pwd`<CR>
" 快捷生成filenametags文件（需要shell脚本支持）
"nn <leader>fr :!gen_LFT<CR>
" 快捷寄存器剪切复制粘贴

vno <M-a> "
" 快捷退出
nn <M-q> :q!<CR>
"nn <C-q> :qa!<CR>
" Ctrl+s保存
no <C-s> :up<CR>
vno <C-s> <C-C>:up<CR>
ino <C-s> <C-O>:up<CR>
" 快捷设置文档类型
nn <M-t>h :set ft=html<CR>
nn <M-t>c :set ft=css<CR>
nn <M-t>p :set ft=php<CR>
nn <M-t>j :set ft=javascript<CR>
" sudo save
cmap w!! w !sudo tee > /dev/null %
cmap s!! w !sudo -u www-data tee > /dev/null %
" }}}

" pytest keyboard{{{1
" ======================
" XXX try more beautiful way
noremap <leader>ps Oimport pytest; pytest.set_trace()<Esc>
noremap <leader>pS Oimport ipdb; ipdb.set_trace()<Esc>
noremap <leader>pd O@pytest.mark.debug<Esc>
"1}} vim:fdm=marker:fdc=1

"------------------------------------------------------------------
" [cmdline keymap] {{{1
"------------------------------------------------------------------
" goto begin/end
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" forward/backward char
cnoremap <C-f> <Right>
cnoremap <C-b> <left>
" forward/backward char
cnoremap <M-f> <S-Left>
cnoremap <M-b> <S-right>
" history next/previous
cnoremap <C-j> <Up>
cnoremap <C-k> <Down>
" 1}}}


"------------------------------------------------------------------
" [quick config edit and source] {{{1
"------------------------------------------------------------------
noremap <leader>er :<C-u>source %<CR>
noremap <silent> <leader>ei :<C-u>execute ':edit ' . hr_misc#get_nvim_config_fname("init.vim")<CR>
" 1}}}
