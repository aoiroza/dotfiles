" Since <Leader> is <Space>, we need a mapping to keep c<Space> behaviour
nnoremap c<Leader> c<Space>

" Cut/Copy/Paste shortcuts
vnoremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader><S-p> "+P
vnoremap <Leader>x "+x

" Quick and easy escape from Insert Mode
imap jj <Esc>

" Move to end of yanked/pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Navigate tabs
nnoremap <Leader>[ gt
nnoremap <Leader>] gT
nnoremap <Leader>. gt
nnoremap <Leader>, gT

" Search in visual selection
vnoremap <M-/> <Esc>/\%V

" Close buffers
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
imap <C-q> <ESC>:bdelete<CR>
nmap <C-q> :bdelete<CR>
vmap <C-q> <ESC>:bdelete<CR>

" <C-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Toggle folds
nnoremap <C-f> za

" Make
map <F3> :w<CR>:make<CR>

" Quickfix and location list
map <silent> <Leader>ln :lnext<CR>zzzv
map <silent> <Leader>lp :lprev<CR>zzzv
map <silent> <Leader>ll :ll<CR>zzzv
map <silent> <Leader>ls :LocList<CR>zzzv
map <silent> <Leader>cn :cnext<CR>zzzv
map <silent> <Leader>cp :cprev<CR>zzzv
map <silent> <Leader>cc :cc<CR>zzzv
map <silent> <Leader>cs :QFix<CR>zzzv

" Switch windows
map <silent> <A-h> <C-w>h
map <silent> <A-l> <C-w>l
map <silent> <A-j> <C-w>j
map <silent> <A-k> <C-w>k

" Move up and down by folds
map <silent> <C-j> zj
map <silent> <C-k> zk

" Tag navigation
map <silent><A-]> <C-w><C-]><C-w>T
inoremap <Nul> <C-x><C-o>

" < >
if &diff
" easily handle diffing
   vnoremap < :diffget<CR>
   vnoremap > :diffput<CR>
else
" visual shifting (builtin-repeat)
   vnoremap < <gv
   vnoremap > >gv
endif

" Delete trailing spaces
nmap <silent> <Leader>ds :%s/\s\+$//e<CR>

" Open scratchpad
nmap <silent> <Leader>bS :tabnew<CR>:set buftype=nofile<CR>

" Set indentations
nmap <silent> <Leader>in2 :set ts=2 sts=2 sw=2<CR>
nmap <silent> <Leader>in4 :set ts=4 sts=4 sw=4<CR>

" xmllint
nmap <silent> <Leader>fx :g//d<CR>:r!xmllint --format "%"<CR>ggdd:w<CR>
nmap <silent> <Leader>fX :!xmllint --format "%" -o "%"<CR>

" JSON formatting
nmap <silent> <Leader>fj :%!python -m json.tool<CR>
