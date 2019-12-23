call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'corntrace/bufexplorer'
"Plug 'rip-rip/clang_complete'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'isRuslan/vim-es6'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'isRuslan/vim-es6'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
call plug#end()


set colorcolumn=81
set modeline
set cino=g0

set tags+=./tags

" clang_complete setting
"let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-8.so.1'
"let g:clang_library_path='/usr/lib/llvm-8/lib'
"let g:clang_user_options='|| exit 0'
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1

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

	colorscheme desert
endif
let g:jsx_ext_required = 0

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


"-------------------------------------------------------------------------------
"coc Settings
function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh()
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" http://github.com/octol/vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
"-------------------------------------------------------------------------------
