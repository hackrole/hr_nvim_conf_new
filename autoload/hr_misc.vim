"------------------------------------------------------------------
" File: hr_misc.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2018-02-15
" Description: some useful function
"------------------------------------------------------------------

"------------------------------------------------------------------
" source vim file in the nvim config dir.
" it need the global base dir set correct.{{{1
"------------------------------------------------------------------
function! hr_misc#load_config(file, dry_run)
    let config_file = resolve(expand(g:hr_base_dir . '/config/' . a:file))
    let cmd = 'source ' . config_file
    execute cmd
    return [config_file, cmd]
endfunction
" 1}}}
