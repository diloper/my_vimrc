
if filereadable(expand('~/.vimrc.plug'))
    source ~/.vimrc.plug
endif

" buftabline setting
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

nnoremap <F5> :wa<CR>:vertical botright term ++kill=term<CR>

"let g:vimspector_enable_mappings = 'HUMAN'
fun! GotoWindow(id)
 :call win_gotoid(a:id)
endfun

func! AddToWatch()
 let word = expand("<cexpr>)
 call vimspector#AddWatch(word)
endfunction
let g:vimspector_base_dir = expand('$HOME/.config/vimspector-config')
let g:vimspector_sidebar_width = 60
nnoremap <leader>da :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>di :call AddToWatch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
nnoremap <S-k> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <leader>d_ :call vimspector#Restart()<CR>
nnoremap <leader>dn :call vimspector#Continue()<CR>
nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>


function! ExampleFunction()
    let my_filetype = &filetype
    let current_word = expand("<cword>") 
    "echo my_filetype
    "echo current_word
    execute ":!echo /".my_filetype."/ ".current_word
endfunction
map <F2> :call ExampleFunction()<cr>

" NERDT
nnoremap <C-t> :NERDTreeToggle<CR>
