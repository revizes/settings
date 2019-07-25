if has('gui_running')
    set guifont=Hermit\ Regular\ 10
endif

set colorcolumn=81

set modeline                                                                     

set cino=g0

set tags+=./tags

let c_space_errors = 1                                                           
highlight ExtraWhitespace ctermbg=red guibg=red                                  
match ExtraWhitespace /\s\+$/  
