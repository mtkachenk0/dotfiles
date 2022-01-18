" set nocompatible " Set compatibility to Vim only.
" set encoding=utf-8
" set lazyredraw 	 " Fix slow scroll problem
" set ttyfast      " Speed up scrolling
" set laststatus=2 " enable statusline in the bottom
" set title
" set titlestring=%F
" set backspace=indent,eol,start " Fix common backspace problems
" set clipboard=unnamed 	       " Use system clipboard
" set number
" set relativenumber
" set incsearch
" set hls							" Highlight search
" set ignorecase	    " Include matching upperrcase words with lowercase search term
" set smartcase       " Include only uppercase words with uppercase search term
" set smartindent
" set noerrorbells    " No bells!
" set novisualbell    " I said, no bells!
"
" set nobackup
" set nowb " nowritebackup
" set noswapfile
" set undodir=~/.vim/undodir
" set undofile
" set autowrite
" set nowrap     " Don't Wrap lines
" set splitbelow " New window goes down on horizontail split
" set splitright " New windows goes right on vertical split
" set mouse=a    " Mouse enabled
" set shell=/bin/zsh
" set updatetime=100
" set cmdheight=1 " Set height of command line below
" set signcolumn=number " True to have 2 columns, number to have it merged
" set sw=2 ts=2 sts=2 " default shifthwidth, tabstop, softtabstop
"
" autocmd BufWritePre * :%s/\s\+$//e " trim spaces on save
" au BufRead,BufNewFile *.rabl setf ruby " set ruby format for rabl
" au BufRead,BufNewFile *.jsx setf javascript " set js format for jsx
"
" " tabs per language
" au FileType go setl noexpandtab sw=4 sts=4 ts=4
" au FileType python setl sw=4 sts=4 ts=4 tw=79
" au FileType rb setl expandtab sw=2 sts=2 ts=2 tw=79
" au FileType javascript setl expandtab sw=2 sts=2 ts=2 tw=79
" au FileType md setl expandtab sw=2 sts=2 ts=2 tw=79
" au FileType json syntax match Comment +\/\/.\+$+
"
"
" syntax on
" colorscheme gruvbox
" set background=dark
"
" set tags+=./tags;
" set t_Co=256
" set tagcase=match
"
" let mapleader = "\<Space>"
"
" command Config :e ~/.vimrc
" command Plugins :e ~/.vimrc.plug
"
" " Search result to the center
" nnoremap n nzz
" nnoremap N Nzz
"
" "Automatically jump to the end of text pasted
" vnoremap <silent> y y`]
" vnoremap <silent> p p`]
" nnoremap <silent> p p`]
"
" " Press ! to close quickfix window or :nohl
" map <C-c> :nohl<CR>
" nmap ! :cclose<CR>
"
" nnoremap <leader><leader> :e #<CR> " open previous file
" nnoremap <Leader>w :w<CR>
" nnoremap <Leader>q :wq<CR>
" nnoremap <Leader>x :bd!<CR> " remove this file from buffer
"
" nmap <Leader>r<CR> *:%s//cg<left><left><left>
" nmap <Leader>rc<CR> *:%s///gc<left><left><left>
" nmap <Leader>gn<CR> *:%s///gn<CR>
"
" nnoremap <Leader>c :let @+=expand('%')<CR>
" nnoremap <Leader>C :let @+=expand('%:p')<CR>
" nnoremap <leader>b :Buffers<CR>
" nnoremap <silent> <Leader>/ :BLines<CR>
" nnoremap <leader>l :Lines<CR>
" nnoremap ,t :Tags<CR>
" nnoremap <leader>D :BTags<CR>
" noremap <leader>d :ALEGoToDefinition<CR>
"
" " any jump
" nnoremap <leader>j :AnyJump<CR> " Normal mode: Jump to definition under cursore
" xnoremap <leader>j :AnyJumpVisual<CR> " Visual mode: jump to selected text in visual mode
" nnoremap <leader>ab :AnyJumpBack<CR> " Normal mode: open previous opened file (after jump)
" nnoremap <leader>al :AnyJumpLastResults<CR> " Normal mode: open last closed search window again
"
" " Resize splat windows
" noremap <up>    <C-W>+
" noremap <down>  <C-W>-
" noremap <left>  3<C-W><
" noremap <right> 3<C-W>>
" filetype off
" filetype plugin indent on
" if filereadable(expand("~/.vimrc.plug"))
" 	source ~/.vimrc.plug
" endif
"
" " Plugin hotkeys
" nmap <Leader>a :ArgWrap<CR>
" " Tabular
" vmap ,:  :Tabularize /:\zs/l0l1<CR>
" vmap ,": :Tabularize /":\zs/l0l1<CR>
" vmap ,=  :Tabularize /=<CR>
" vmap ,{  :Tabularize /{<CR>
" vmap ,=> :Tabularize /=>/l1l1<CR>
" vmap ,,  :Tabularize /,\zs/l1r0<CR>
"
" " Ruby
" command! Symbolicate  :%s/"\([a-z_]\+\)"/:\1/gc
" command! Stringify    :%s/:\([a-z_]\+\)/"\1"/gc
" command! NewHash      :%s/"\([^=,'"]*\)"\s\+=> /\1: /gc
" command! OldHash      :%s/\(\w*\): \(\w*\)/"\1" => \2/gc
"
" " RSpec.vim mappings
" let g:rspec_command = "Dispatch rspec {spec}"
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>T :call RunAllSpecs()<CR>
"
" " Ranger
" let g:ranger_map_keys = 0 " disable ctrl-f mapping
" let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
" let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'
" noremap <C-n> :RangerCurrentFile<CR>
" noremap <Leader>n :RangerWorkingDirectory<CR>
"
" set grepprg=rg\ --vimgrep\ --smart-case\ --follow
"
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"
" let g:airline_statusline_ontop=1
" let g:airline#extensions#tabline#enabled = 1
"
" " let g:ale_disable_lsp = 1 " if coc is used
" let g:ale_fix_on_save = 1
" let g:ale_linters = {
" \   'javascript': ['eslint', 'prettier'],
" \}
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'ruby': ['rubocop'],
" \   'javascript': ['prettier'],
" \ }
" " \   'javascript': ['eslint'], " causes weird error on save
"
" " folding
" " set nofoldenable    " disable folding
" " set foldmethod=syntax
" " augroup vimrc
" "   au BufReadPre * setlocal foldmethod=indent
" "   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" " augroup END
" " au BufWinLeave ?* mkview
" " au BufWinEnter ?* silent loadview
"
" " GuttenTags
" " set statusline+=%{gutentags#statusline()}
" let g:gutentags_add_default_project_roots = 0
" let g:gutentags_project_root = ['package.json', '.git']
" let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
" let g:gutentags_generate_on_new = 1
" let g:gutentags_generate_on_missing = 1
" let g:gutentags_generate_on_write = 1
" let g:gutentags_generate_on_empty_buffer = 0
" let g:gutentags_ctags_exclude = [
" 	\ '*.git', '*.svg', '*.hg', '*/tests/*', 'build', 'dist', '*sites/*/files/*', 'bin',
" 	\ 'node_modules', 'bower_components', 'cache', 'compiled', 'docs', 'example', 'bundle', 'vendor', '*.md', '*-lock.json',
"   \ '*.lock', '*bundle*.js', '*build*.js', '.*rc*', '*.json', '*.min.*', '*.map', '*.bak', '*.zip', '*.pyc', '*.class',
" 	\ '*.sln', '*.Master', '*.csproj', '*.tmp', '*.csproj.user', '*.cache', '*.pdb', 'tags*', 'cscope.*', '*.css', '*.less',
"   \ '*.scss', '*.exe', '*.dll', '*.mp3', '*.ogg', '*.flac', '*.swp', '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
"   \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx'
"   \ ]
" command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')
