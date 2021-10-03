" Pro version Vimrc
" I kept all other settings in plugins/settings directory
"
" Eddie Kao
" http://blog.eddie.com.tw
" eddie@digik.com.tw

execute pathogen#infect()

" 终端显色配置
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
"set background=dark

" 状态栏显示路径的绝对地址
set laststatus=2      " 总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
function! CurDir()
        let curdir = substitute(getcwd(), $HOME, "~", "g")
        return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
