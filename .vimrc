set hls
set nu
syntax on
set cindent
set viminfo='1000
set shortmess=atI
set showmatch
set incsearch
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set ts=2

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()
call pathogen#infect()
syntax on
filetype plugin indent on
filetype on

"let g:rustfmt_autosave = 1
set hidden
let g:ycm_rust_src_path = '/home/liaozy/.cargo/rust-master/src'
let g:racer_cmd = "/home/liaozy/.cargo/bin/racer"
nnoremap <C-]> :YcmCompleter GoTo<CR>

imap <C-P>  <Esc>lki
imap <C-N>  <Esc>lji
imap <C-B>  <Left>
imap <C-F>  <Right>
imap <C-A>  <Home>
imap <C-E>  <End>
imap <C-V>  <Esc>o
imap <C-D>  <DEL>
nmap <C-B>  hi
nmap <C-F>  li
nmap <C-P>	ki
nmap <C-N>	ji

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
