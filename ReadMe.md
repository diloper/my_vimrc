# Vim Note for Programming
###### tags: `Vim`
REF:
1. https://medium.com/@jinghua.shih/%E6%AF%8F%E5%80%8B%E9%96%8B%E7%99%BC%E8%80%85%E9%83%BD%E6%87%89%E8%A9%B2%E8%A6%81%E6%9C%83%E7%94%A8%E7%9A%84%E7%B7%A8%E8%BC%AF%E5%99%A8-vim-5f83349973a3

1. https://youtu.be/3TX3kV3TICU
2. https://youtu.be/XA2WjJbmmoM

## 先閱讀:+1: 
https://github.com/yangyangwithgnu/use_vim_as_ide#0
## Configuring Vim for Node Js Development:+1: 
https://theselfhostingblog.com/posts/configuring-vim-for-node-js-development/#
## Shifting blocks visually
https://vim.fandom.com/wiki/Shifting_blocks_visually

## Install vim-plug (windows) 套件管理

安裝後請重新開機!!!
https://github.com/junegunn/vim-plug

## Top 15 Best Vim Plugins for Programmers and Developers
https://www.ubuntupit.com/best-vim-plugins-for-programming/


## netrw

edit .vimrc
```shell=
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
```

## Vundle

https://github.com/VundleVim/Vundle.vim

## Nerdtree
https://github.com/preservim/nerdtree


VIMRC 的位置

https://www.jianshu.com/p/4e040835f241



```
" .vimrc.plug

call plug#begin('~/.vim/plugged')
" Git
Plug 'tpope/vim-fugitive'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code commenter
Plug 'preservim/nerdcommenter'
"
" Syntax highlighting
Plug 'dense-analysis/ale'

" NERDTree
Plug 'preservim/nerdtree'
"
" Statusbar
Plug 'itchyny/lightline.vim'
"
" Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File finder
Plug 'vifm/vifm.vim'

" Theme
Plug 'morhetz/gruvbox'

" Tabs
Plug 'ap/vim-buftabline'

call plug#end()

set background=dark
"colorscheme gruvbox
               
```
Buftabline
![](https://i.imgur.com/cwc8d3G.png)
