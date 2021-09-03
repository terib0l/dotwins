nnoremap [denite] <Nop>
nmap <C-d> [denite]
nnoremap <silent> [denite]g :<C-u>Denite grep -buffer-name=search-buffer-denite<CR>
nnoremap <silent> [denite]r :<C-u>Denite -resume -buffer-name=search-buffer-denite<CR>
nnoremap <silent> [denite]p :<C-u>Denite file/rec<CR>
call denite#custom#var('grep','command',['pt','--follow','--nogroup','--nocolor','--hidden'])
call denite#custom#var('grep','default_opts',[])
call denite#custom#var('grep','recursive_opts',[])
call denite#custom#var('file/rec','command',['pt','--follow','--nogroup','--nocolor','--hidden','-g',''])
