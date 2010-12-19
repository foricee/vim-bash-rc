"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("win32")
    set guifont=courier_new:h12
    let s:vim__home='d:/program files/vim'
else
    let s:vim__home='/home/foricee/.vim'
    set guifont=monospace\ 11
endif

"vim���ļ�ʱ�ĳ���ʹ�õı���
set fileencodings=utf8,gbk,big5

set nocompatible
"��ȷ�϶Ի��򣨶���gvim����������ѡ�����vim����������δ��������ʱ�ľ�����Ϣ
set confirm

"enable filetype plugin
filetype plugin on
filetype indent on

"set to auto read when a file is changed from the outside
set autoread

"have the mouse enabled all the time:
set mouse=a

"set mapleader
let mapleader = ","
let g:mapleader = ","

"fast saving
nmap <leader>w :w!<cr>:set nocursorline<cr>
"fast opening
nmap  <leader>o :browse confirm e<cr>

map <leader>y "+y
map <leader>d "+d
map <leader>p "+p
vmap <c-c> "+y
map <c-a> ggVG
"�滻
map <leader>r "cciw<c-r>0<esc>
"�� y �� d һ��, Ҫ��Ȼ Y �ı���� yy һ��.
map Y y$

map <leader>e $
map <leader>s ^

"fast editing of .vimrc
if has("win32")
    map <leader>td ,te:e! d:/program\ files/vim/_vimrc<cr>
else
    map <leader>td ,te:e! /home/foricee/.vimrc<cr>
endif

map <F11> zR<a-space>
noremap zr zR

nmap <space> <c-f>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI something
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

colorscheme settlemyer
if has("gui_running")

    "���õײ�������
"    set guioptions-=b
    "���ù�������
    set guioptions-=T
    set guioptions-=m
    au GUIEnter * simalt ~x "maximum the initial window
    noremap <m-space> :simalt ~<cr>
    inoremap <m-space> <c-o>:simalt ~<cr>
    cnoremap <m-space> <c-c>:simalt ~<cr>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�����˹���봰�����±߽����С�о�Ϊ����ʱ�����𴰿ڹ���.
set scrolloff=3
set sidescroll=10

"always show current position
set ruler

"the commandbar is 3 high
set cmdheight=2
set number

" allow backspacing over everything in insert mode
set backspace=eol,start,indent

"���Ҽ�ͷ����h, l�������еı߽�ʱҲ�����ܵ���������,
set whichwrap+=<,>,h,l

"when searching
set ignorecase
set incsearch		" do incremental searching
set hlsearch

"show matching bracets
set showmatch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"popup menu
set winaltkeys=no
" inoremap <expr> <a-j>       pumvisible()?"\<down>":"\<space>"
inoremap <a-j>       <down>
inoremap <a-k>       <up>
inoremap <a-h>       <left>
inoremap <a-l>       <right>

"��ǩ���
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit<cr>
map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove 0<cr>

map tn gt
map tp gT

let g:previous_tab = 1
autocmd tableave * let g:previous_tab = tabpagenr()
map <c-tab> :tabnext <c-r>=g:previous_tab<cr><cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" parenthesis/bracket expanding""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <leader>1 <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>2 <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>3 <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>4 <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>5 <esc>`>a"<esc>`<i"<esc>
"map auto complete of (, ", ', [
inoremap <leader>1 ()<esc>:let leavechar=")"<cr>i
inoremap <leader>2 []<esc>:let leavechar="]"<cr>i
inoremap <leader>3 {}<esc>:let leavechar="}"<cr>i
inoremap <leader>4 ''<esc>:let leavechar="'"<cr>i
inoremap <leader>5 ""<esc>:let leavechar='"'<cr>i
inoremap <leader>6 {<esc>o}<esc>:let leavechar="}"<cr>o
inoremap <leader>7 <><esc>:let leavechar='>'<cr>i
"au bufnewfile,bufread *.\(vim\)\@! inoremap " ""<esc>:let leavechar='"'<cr>i
"au bufnewfile,bufread *.\(txt\)\@! inoremap ' ''<esc>:let leavechar="'"<cr>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editing mappings etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"move a line of text using control
nmap <m-j> mz:m+<cr>`z
nmap <m-k> mz:m-2<cr>`z
vmap <m-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <m-k> :m'<-2<cr>`>my`<mzgv`yo`z

"ɾ����β�ո�
func! Deletetrailingws()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd bufwrite * :call Deletetrailingws()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" command-line config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"switch to the dir of current file
map <leader>cd :cd %:p:h<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn backup off
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 " ʵ�ʵ� tab ��Ϊ 4 ���ո�
set shiftwidth=4 "�����Զ����� 4 ���ո�, ��ȻҪ���Զ�������.
set softtabstop=4 "������ softtabstop Ϊ 4. ���� tab ������� 4 ��.
set expandtab "������ tab ��, vim ��ǡ���Ŀո��������� tab

set linebreak "���ڵ����м����
set nowrap "�Զ�����
set smarttab

if has("gui")
    hi over80 guifg=fg guibg=red
    au bufnewfile,bufread *.pl,*.py,*.java,*.c,*.cpp,*.h match over80 '\%>80v.*'
endif

""""""""""""""""""""""""""""""
" indent
""""""""""""""""""""""""""""""
set autoindent
set smartindent
set cindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" supertab
""""""""""""""""""""""""""""""
set completeopt=longest,menu
imap <leader>. <C-X><C-U>
" let g:SuperTabRetainCompletionType=2
" let g:SuperTabDefaultCompletionType="<C-X><C-U>"
" imap <c-n> <c-x><c-n>

""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""
" if has("win32")
    " autocmd filetype cpp set tags+=d:/myctags/stl.tags
" else
    " autocmd filetype cpp set tags+=~/.vim/ctags/cpp
" endif

""""""""""""""""""""""""""""""
" tag list (ctags)
""""""""""""""""""""""""""""""
"Ĭ�������taglist�ǲ��򿪵� :tlist
"��ҪĬ�ϴ�taglist��_vimrc�м��� let tlist_auto_open=1
map <leader>tl :TlistToo<cr><c-w>r


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" programming language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>m mmHmh20k40=='hzt'm
map <leader>m 40==

function! Set_commentv_mine(char)
    let s:currentline = substitute(getline('.'), "\\s*", "", "")
    if strlen(s:currentline) > 0
        if stridx(s:currentline, a:char) != 0
            exec "normal! ^i".a:char
        else
            exec "normal! ^".strlen(a:char)."x"
        endif
    endif
endfunction

autocmd Filetype vim,_vimrc vmap cx :call Set_commentv_mine('" ')<cr>
autocmd Filetype vim,_vimrc nmap cx :call Set_commentv_mine('" ')<cr>
autocmd Filetype python,perl,sh vmap cx :call Set_commentv_mine('# ')<cr>
autocmd Filetype python,perl,sh nmap cx :call Set_commentv_mine('# ')<cr>
autocmd Filetype c,cpp vmap cx :call Set_commentv_mine('// ')<cr>
autocmd Filetype c,cpp nmap cx :call Set_commentv_mine('// ')<cr>
autocmd Filetype tex vmap cx :call Set_commentv_mine('% ')<cr>
autocmd Filetype tex nmap cx :call Set_commentv_mine('% ')<cr>

""""""""""""""""""""""""""""""
" ppython section
""""""""""""""""""""""""""""""
autocmd filetype python set foldmethod=indent
autocmd filetype python map <buffer> <leader><space> :w!<cr>:!python "%"<cr>

" read file idiom
func! Python_readfile()
    let s:name = input("filename:")
    exe 'normal "-ccwith open("'.s:name.'") as handle:'
    exe "normal ofor line in handle:"
    exe "normal oline = line.strip()"
endfunc

autocmd filetype python imap <c-f> x<esc>"-x:call Python_readfile()<cr>

autocmd filetype python,perl inorea <buffer> p print

"pydiction
" let g:pydiction_location = s:vim__home.'/vimfiles/ftplugin/pydiction/complete-dict'

""""""""""""""""""""""""""""""
" pperl section
""""""""""""""""""""""""""""""
autocmd filetype perl set foldmethod=syntax
autocmd filetype perl map <buffer> <leader><space> :w!<cr>:!perl %<cr>


"""""""""""""""""""""""""""""""
" pvim section
"""""""""""""""""""""""""""""""
autocmd filetype vim set nofoldenable
autocmd filetype vim map <buffer> <leader><space> :w!<cr>:source %<cr>


""""""""""""""""""""""""""""""
" pcpp mappings, also work in c++,
"""""""""""""""""""""""""""""""
func! InsertPrepro()
    exe "normal i#ifndef _".expand("%:t:r")."_H_\n"
    exe "normal bgU$"
    exe "normal o#define _".expand("%:t:r")."_H_\n"
    exe "normal bgU$"
    exe "normal o#endif"
    exe "normal O"
endfunc
autocmd BufNewFile *.h :call InsertPrepro()

map <leader>; mpA;<esc>`p

autocmd filetype c,cpp map <leader><space> :w!<cr>:!g++ %<cr>:!<c-r>=expand("%:h")<cr>/a.out<cr>
autocmd filetype c,cpp,h map <f4> :A<cr>
autocmd filetype c,cpp,h set foldmethod=syntax

""""""""""""""""""""""""""""""
" binary section
"""""""""""""""""""""""""""""""
map <leader>bb :%!xxd<cr>
map <leader>br :%!xxd -r<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" using rot13 reverse everything ... :)
" map <f9> ggVgg?

" preprocess text, copy to MS Word to make chart
" �滻����ո�Ϊһ����ȥ����β�ո�
map <leader>tt :%s/\s\+/ /g<cr>:%s/\s\+$//g<cr>ggVG,yggVG

"remove the windows ^M
noremap <leader>M mmHmt:%s/<c-v><cr>//ge<cr>'tzt'm

""super paste
inoremap <c-v> <c-r>+<esc>

" ���������ļ�����������
map <a-f> mmggO<c-r>=expand("%:p")<cr><esc>V"+ydd`m

"a function that deletes bg color
function! Smarttohtml()
    tohtml
    try
        exe "normal! ggddjjdd"
        exe ":%s/style=\"background-color:\\s#[a-z0-9]*\"//g"
        exe ":%s/monospace/courier new/g"
    catch
    endtry
    exe ":write!"
    "unload current buffer
    exe ":bd"
endfunction
