"Be iMproved, required
set nocompatible

so ~/.vim/plugins.vim

syntax enable
set background=dark

"The default leader is \, but a comma is better
let mapleader=','

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" treat all numerals as decimals ( vim defaults is octal)
set nrformats=

" to not have tabs replacing spaces after saving a file
set tabstop=2 shiftwidth=2 expandtab

noswapfile

let NERDTreeShowHidden=1

" omnicompletition on TAB
let g:SuperTabDefaultCompletionType = ""



" Code Sniffer
" Pass arguments to phpcs binary
let g:phpqa_codesniffer_args = "--standard=Zend"
" Another example

" PHP codesniffer binary (default = phpcs)
let g:phpqa_codesniffer_cmd='~/.composer/vendor/bin/phpcs'

" Run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 1

" PHP mess detector binary (default = phpmd)
let g:phpqa_messdetector_cmd='~/.composer/vendor/bin/phpmd'

" Run mess detector on save (default = 1)
let g:phpqa_messdetector_autorun = 1

"-------------------Visuals------------------
colorscheme solarized

"Macvim-specific line-height.
set linespace=10

"Set 256 colors for terminal vim.
set t_CO=256

"We don't want Gui tabs.
"set guioptions-=e

"Remove scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Activate relative line numbers
set relativenumber

"Activate line numbers
set number

highlight Cursor guifg=white guibg=green
set guicursor=n-v-c:block-Cursor

"Slow down cursor blinking speed
set guicursor+=n-v-c:blinkon600-blinkoff400

" Highlight the current line
set cursorline
" Set cursorline colors
highlight CursorLine ctermbg=235
" Set color of number column on cursorline
highlight CursorLineNR ctermbg=235 ctermfg=white





"-------------------Search------------------
set hlsearch

"Position on first occurence while typing
set incsearch



"-------------------Split Management------------------
set splitbelow
set splitright

"Mapping CTRL+W+J/K/H/L to CTRL+J/K/H/L
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"-------------------Mappings------------------

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Map jj to esc
inoremap jj <Esc>

"Find tag
nmap <Leader>f :tag<space>

"Change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Resize windows
nmap <C-v> :vertical resize +5<cr>



"-------------------Plugins------------------

"/
"/ CtrlP
"/
"ignore folders
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
"list customization
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results30'

"Map to CMD+p
nmap <D-p> :CtrlP<cr>
"Go to definition in CtrlP with Ctrl+r
nmap <D-r> :CtrlPBufTag<cr>
"Go to most reacently opened files
nmap <D-e> :CtrlPMRUFiles<cr>


"/
"/ NERDTree
"/
"Not override the - for vim vinegar
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>


"/
"/ Vim Powerline
"/
let g:Powerline_symbols = 'fancy'
set laststatus=2 "Always show the status line
set encoding=utf-8 "Necessary to show Unicode glyphs
set noshowmode "Hide the default mode text (e.g -- INSERT -- )


"-------------------Functions------------------

" distinguish groups of tags in php comments @tags
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction




"-------------------Auto-Commands------------------

"Automatically source the Vimrc file on save.

augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END


augroup phpSyntaxOverride
        autocmd!
        autocmd FileType php call PhpSyntaxOverride()
augroup END




"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
