let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/workspace/learngo
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd NvimTree
edit ~/Documents/workspace/learngo/13-loops/07-project-word-finder/main.go
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 86) / 173)
exe '2resize ' . ((&lines * 45 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 142 + 86) / 173)
exe '3resize ' . ((&lines * 21 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 142 + 86) / 173)
argglobal
enew
file NvimTree
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt ~/Documents/workspace/learngo/13-loops/07-project-word-finder/main.go
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 39 - ((38 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 39
normal! 0
wincmd w
argglobal
if bufexists("term://~/Documents/workspace/learngo//10259:/opt/homebrew/bin/fish;\#toggleterm\#6") | buffer term://~/Documents/workspace/learngo//10259:/opt/homebrew/bin/fish;\#toggleterm\#6 | else | edit term://~/Documents/workspace/learngo//10259:/opt/homebrew/bin/fish;\#toggleterm\#6 | endif
if &buftype ==# 'terminal'
  silent file term://~/Documents/workspace/learngo//10259:/opt/homebrew/bin/fish;\#toggleterm\#6
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 21 - ((20 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 86) / 173)
exe '2resize ' . ((&lines * 45 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 142 + 86) / 173)
exe '3resize ' . ((&lines * 21 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 142 + 86) / 173)
tabnext 1
badd +39 ~/Documents/workspace/learngo/13-loops/07-project-word-finder/main.go
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=fnilxTtocFO
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
