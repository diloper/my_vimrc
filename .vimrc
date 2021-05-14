
if filereadable(expand('~/.vimrc.plug'))
    source ~/.vimrc.plug
endif

nnoremap <C-t> :NERDTreeToggle<CR>
