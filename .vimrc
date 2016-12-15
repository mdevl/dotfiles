" --------------------------------------- "
" https://github.com/kucinghitam/dotfiles "
" --------------------------------------- "

set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required

""" Vim plugin manager let's manage Vundle
    """ Automatically setting up vandle
    let vundle=1
    let vundle_readme=expand('$HOME/.vim/bundle/Vundle.vim/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo """
        silent !mkdir -p $HOME/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
        let vundle=0

    endif
    """ Initialize vundle
        filetype off                  " required
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
    """ Vundle plugins

	""" Vim plugin manager
    	Plugin 'VundleVim/Vundle.vim'

	""" A tree explorer plugin for vim
    	Plugin 'scrooloose/nerdtree'

   	""" Vim colorscheme
    	Plugin 'flazz/vim-colorschemes'
    	Plugin 'chriskempson/base16-vim'
      	colorscheme xoria256

	    """ Git wrapper
    	Plugin 'tpope/vim-fugitive'

    	""" Syntax checking hacks
    	Plugin 'vim-syntastic/syntastic'
      	""" Recommend settings
          set statusline+=%#warningmsg#
          set statusline+=%{SyntasticStatuslineFlag()}
          set statusline+=%*

    	""" Syntax highlighting
    	Plugin 'slim-template/vim-slim.git'

    	""" File finder
    	Plugin 'ctrlpvim/ctrlp.vim'

    	""" Display tags in a window
    	Plugin 'majutsushi/tagbar'

    	""" Status/tabline for vim
    	Plugin 'vim-airline/vim-airline'
    	Plugin 'vim-airline/vim-airline-themes'

    	""" Vim motions on speed!
    	Plugin 'easymotion/vim-easymotion'

	""" Fast and Easy Find and replace across multiple files
	Plugin 'dkprice/vim-easygrep'	

    	""" Installing the plugin {{
        if vundle == 0
            echo "Installing Vundles, please ignore key map error messages"
            echo """
            :PluginInstall
        endif
    """ End of plugins
        call vundle#end()
        filetype plugin indent on

" enable syntax highlighting
syntax on
" Show partial commands in the last line of the screen
set showcmd
set laststatus=2
set cmdheight=2
""" Text formatting {{
    set autoindent
    set backspace=indent,eol,start
    set expandtab
    set ignorecase
    set number
    set shiftwidth=4
    set smartcase
    set softtabstop=4
    set tabstop=4
    set wildmenu

    """ NERD Tree
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'

    """ vim-airline
    let g:airline_theme='base16_default'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

    if !exists('g:airline_symbols')
       let g:airline_symbols = {}
    endif

    """ unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    """ airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

    """ Syntastic
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    """ Easygrep
    let g:EasyGrepCommand=1
    let g:EasyGrepPerlStyle=1

    """ Ctrlp
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'

    """ Mappings
    map <C-d> :NERDTreeToggle<CR>
