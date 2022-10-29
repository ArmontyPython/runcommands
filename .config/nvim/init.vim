"set noexpandtab
set cursorline
set runtimepath^=~0/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc


let g:coc_node_path = '/snap/node/current/bin/node'
call plug#begin('~/.config/nvim/autoload')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes

Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'EdenEast/nightfox.nvim'
Plug 'phaazon/hop.nvim'


" Initialize plugin system
call plug#end()

colorscheme duskfox

lua require('init')

""" Hop stuff """
noremap F <cmd>:HopWord<cr>

""" Telescope stuff"""
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>FF <cmd>tabnew<cr><cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""" COC stuff"""
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"go to definition
nmap <silent> gd <Plug>(coc-definition)
"go to definition in new tab
nnoremap gD <c-w>s<Plug>(coc-definition)<c-w>T
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


nmap <leader>rn <Plug>(coc-rename)
nmap <leader>gn <Plug>(coc-diagnostic-next)


