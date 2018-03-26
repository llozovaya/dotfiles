colorscheme zenburn
set relativenumber
let g:CtrlSpaceDefaultMappingKey = "<leader>s"

    syntax on                   " Syntax highlighting
    filetype on
    filetype plugin indent on
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    scriptencoding utf-8

    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=onemore             " Allow for cursor beyond last character
    set history=1000                    " Store a ton of history (default is 20)
    set hidden                          " Allow buffer switching without saving

    set iskeyword-=.                    " '.' is an end of word designator
    set iskeyword-=#                    " '#' is an end of word designator
    set iskeyword-=-                    " '-' is an end of word designator

    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent

    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current

    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.


    set hlsearch                    " Highlight search terms
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present

    set backup                  " Backups are nice ...
    set undofile                " So is persistent undo ...
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

    set cursorline                  " Highlight current line

    set number                      " Line numbers on

    " Workaround vim-commentary for Haskell
    autocmd FileType haskell setlocal commentstring=--\ %s
    autocmd FileType cabal setlocal shiftwidth=2 softtabstop=2 tabstop=2
	let mapleader = ','
    let maplocalleader = '_'

        map <C-J> <C-W>j
        map <C-K> <C-W>k
        map <C-L> <C-W>l
        map <C-H> <C-W>h
        map <S-H> gT
        map <S-L> gt

        nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
        nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

        nnoremap <C-=>:exe "resize " . (winwidth(0) * 3/2)<CR>
        nnoremap <C-->:exe "resize " . (winwidth(0) * 2/3)<CR>

        set clipboard+=unnamed

" Enter mapping
    nnoremap <CR> o<ESC>
    "nnoremap ^M O<ESC>

    nnoremap Y y$

" swap files

    set backupdir=$HOME/.swap
    set noswapfile
    set dir=$TEMP

" check if files have been changed

set noautoread
au BufEnter * checktime
au CursorMoved * checktime
au CursorMovedI * checktime
au CursorHold * checktime
au CursorHoldI * checktime

" удаление вайтспейсов
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.vim/plugged')

    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'tmhedberg/matchit'
    Plug 'bling/vim-airline'
    Plug 'bling/vim-bufferline'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mbbill/undotree'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'vim-scripts/restore_view.vim'
    Plug 'mhinz/vim-signify'
    " Plug 'tpope/vim-abolish.git'
    Plug 'gcmt/wildfire.vim'

    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Valloric/YouCompleteMe'

    Plug 'Shougo/neocomplete.vim'
    Plug 'Shougo/vimproc.vim'
    Plug 'eagletmt/neco-ghc'
    Plug 'eagletmt/ghcmod-vim'

    Plug 'tommcdo/vim-exchange'
    Plug 'idris-hackers/idris-vim'

    Plug 'tpope/vim-fireplace'
    Plug 'tpope/vim-salve'
    Plug 'tpope/vim-dispatch'


call plug#end()


    " Fugitive {
        if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
            nnoremap <silent> <leader>gs :Gstatus<CR>
            nnoremap <silent> <leader>gd :Gdiff<CR>
            nnoremap <silent> <leader>gc :Gcommit<CR>
            nnoremap <silent> <leader>gb :Gblame<CR>
            nnoremap <silent> <leader>gl :Glog<CR>
            nnoremap <silent> <leader>gp :Git push<CR>
            nnoremap <silent> <leader>gr :Gread<CR>
            nnoremap <silent> <leader>gw :Gwrite<CR>
            nnoremap <silent> <leader>ge :Gedit<CR>
            " Mnemonic _i_nteractive
            nnoremap <silent> <leader>gi :Git add -p %<CR>
            nnoremap <silent> <leader>gg :SignifyToggle<CR>
        endif
    "}

" Haskell autocomlete
    " autocmd FileType haskell nmap <buffer> <space>hi :<C-u>Unite -start-insert haskellimport<CR>

    autocmd FileType haskell nmap <buffer> <leader>hc :<C-u>GhcModTypeClear<CR>
    autocmd FileType haskell nmap <buffer> <leader>hi :<C-u>GhcModInfoPreview!<CR>
    autocmd FileType haskell nmap <buffer> <leader>ht :<C-u>GhcModType!<CR>
    autocmd FileType haskell nmap <buffer> <leader>hT :<C-u>GhcModTypeInsert!<CR>

    let g:haskellmode_completion_ghc = 0
    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

    let g:necoghc_enable_detailed_browse = 1



