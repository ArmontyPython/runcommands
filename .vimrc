syntax on
set nohlsearch
set relativenumber
"set noexpandtab
let g:python_recommended_style=0
command! Date put =strftime('%m-%d-%Y')

" customize colors of Pmenu:
hi Pmenu ctermbg=grey ctermfg=black
"hi Normal ctermbg=#1f3640 ctermfg=black

" abreviations
ab ifname if __name__ == "__main__":
