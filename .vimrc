syntax on
set nohlsearch
set relativenumber
set number
"use a custom dictionary that's created from the cpu repo
"the words are sorted by usage!
set dictionary=~/runcommands/vimdict.txt
"set noexpandtab
"let g:python_recommended_style=0
command! Date put =strftime('%a, %m-%d-%Y')

" customize colors of Pmenu (makes it look better in default colorscheme):
hi Pmenu ctermbg=grey ctermfg=black

" abreviations
ab ifname if __name__ == "__main__":
ab implot from matplotlib import pyplot as plt
ab impy import numpy as np
ab figax fig, ax = plt.subplots()<cr>ax.plot(x, y, '-')<cr>ax.set_xlabel('xlabel')<cr>ax.set_ylabel('ylabel')<cr>ax.set_title('ax_title')
ab pdbst pdb.set_trace()
ab css_link <link  href="{{url_for('static',filename='css/filename.css')}}" rel="stylesheet"/>
ab abc abcdefghijklmnopqrstuvwxyz
