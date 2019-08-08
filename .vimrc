call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'corntrace/bufexplorer'
Plug 'rip-rip/clang_complete'
call plug#end()


set colorcolumn=81
set modeline
set cino=g0

set tags+=./tags

let c_space_errors = 1
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"highlight ModeMsg guifg=black guibg=#C6C5FE gui=BOLD ctermfg=red ctermbg=black cterm=BOLD
"highlight ModeMsg ctermfg=red
highlight ModeMsg guifg=black guibg=#C6C5FE gui=BOLD ctermfg=black ctermbg=cyan cterm=BOLD

if has('gui_running')
	set guifont=Hermit\ Regular\ 10
	" visual mode
	vnoremap <S-Del>	"+x
	vnoremap <C-Insert>	"+y

	" insert mode
	inoremap <C-Insert>	"+y
	inoremap <S-Insert>	"+gP
	map <S-Insert>		"+gP
	cmap <S-Insert>		<C-R>+
endif


" clang_complete setting
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-8.so.1'
let g:clang_user_options='|| exit 0'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
