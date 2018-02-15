" set config-dir
let g:hr_base_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:hr_plug_plugin_dir = g:hr_base_dir . "/plugged"

execute 'set runtimepath^=' . g:hr_base_dir

call plug#begin(g:hr_plug_plugin_dir)
Plug 'junegunn/vim-plug'

" nertree
Plug 'scrooloose/nerdtree'
Plug 'mihaifm/vimpanel'
Plug 'flazz/vim-colorschemes'
Plug 'h1mesuke/vim-unittest'

" completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'

" snippet
Plug 'Sirver/ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" misc
Plug 'tpope/vim-scriptease'

call plug#end()

" gloabl config
cal hr_misc#load_config("hr_global_settings.vim", 0)

" global keymap
call hr_misc#load_config("hr_keymap.vim", 0)

" global command config
call hr_misc#load_config("hr_command.vim", 0)
" plugin config
call hr_misc#load_config("hr_plugin.vim", 0)
