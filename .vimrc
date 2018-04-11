" Required
set nocompatible
filetype off

" Set The Runtime Path To Include Vundle And Initialize
set rtp+=~/.vim/bundle/Vundle.vim


" Alternatively, Pass A Path Where Vundle Should Install Plugins
" Call vundle#begin('~/some/path/here')
call vundle#begin()

" Plug-in manager for vim ~ https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" Status line at the bottom of each window ~ https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'

" Collection of themes for vim-airline ~ https://github.com/vim-airline/vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

" Git wrapper ~ https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" Tree explorer ~ https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" Showing git status flags ~ https://github.com/Xuyuanp/nerdtree-git-plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Syntax checking ~ https://github.com/vim-syntastic/syntastic
Plugin 'vim-syntastic/syntastic'

" Shows git diff in the gutter ~ https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" Grep search tools ~ https://github.com/vim-scripts/grep.vim
Plugin 'grep.vim'

" Colorscheme Pack
Plugin 'flazz/vim-colorschemes'

" Helps To End Certain Structures Automatically
Plugin 'tpope/vim-endwise'

" Ruby On Rails Power Tools
Plugin 'tpope/vim-rails'

" Comments
Plugin 'comments.vim'

" Filtering And Alignment
Plugin 'godlygeek/tabular'

" Surroundings
Plugin 'tpope/vim-surround'

" Taglist
Plugin 'taglist.vim'

" Insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

" CoffeeScript support
Plugin 'kchmck/vim-coffee-script'

" Runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'

" Syntax highlighting
Plugin 'slim-template/vim-slim'

" Functions and commands for programming in Vim
Plugin 'L9'

" Vim syntax highlighting for Pug (formerly Jade) templates
Plugin 'digitaltoad/vim-pug.git'

" All Of Your Plugins Must Be Added Before The Following Line
call vundle#end()


" Vim Settings

" Vim can detect the type of file that is edited.  This is done by checking the
" file name and sometimes by inspecting the contents of the file for specific text.
" http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype plugin indent on

" Set vim settings
set noswapfile
set number
set lines=1000 columns=1000
set expandtab ts=2 sw=2 ai

syntax enable
set background=dark
colorscheme Tomorrow-Night

" Highlight search terms
set hlsearch
hi Search guibg=#7b92b7


" Plugins Settings

" Vim-airline (:h airline)
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⭡'

" vim-airline-themes
let g:airline_theme='base16_pop'

" Nerdtree
map <F2> :NERDTreeToggle<CR>
map ww :tabnew<CR>:NERDTreeToggle<CR>

" Nerdtree file highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#F56C6C', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', '#12D900', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#f0db4f', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', '#8EE635', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', '#94ED8C', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', '#e46425', '#151515')
call NERDTreeHighlightFile('erb', 'yellow', 'none', '#35E68E', '#151515')
call NERDTreeHighlightFile('haml', 'yellow', 'none', '#e46425', '#151515')
call NERDTreeHighlightFile('jbuilder', 'yellow', 'none', '#32C9C9', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', '#24abe2', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('example', 'yellow', 'none', '#FAA7E5', '#151515')
call NERDTreeHighlightFile('png', 'yellow', 'none', '#FAF0A7', '#151515')
call NERDTreeHighlightFile('jpg', 'yellow', 'none', '#FAAD69', '#151515')

" Syntax checking
let g:syntastic_auto_loc_list = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'} " Disable false positives for erb files

" Grep
map <C-f> :Rgrep<cr>
let Grep_Default_Filelist = '*.*'
let Grep_Skip_Files = '*.log *.sql *.png *.jpg *.jpeg *.gif'
let Grep_Skip_Dirs = 'tmp system coverage log solr public'


"Save File
:map <C-s> :w<cr>

" Move Line Down
:nnoremap <A-DOWN> :m+<CR>==
:inoremap <A-DOWN> <Esc>:m+<CR>==gi
:vnoremap <A-DOWN> :m'>+<CR>gv=gv

" Move Line Up
:nnoremap <A-UP> :m-2<CR>==
:inoremap <A-UP> <Esc>:m-2<CR>==gi
:vnoremap <A-UP> :m-2<CR>gv=gv

" Filtering And Alignment Commands
" :help tabular
" :Tabularize /,         -> line these lines up at the commas;
" :Tabularize /,/r0      -> print things right-aligned with no spaces between fields
" :Tabularize /,/r1c1l0  -> Multiple format specifiers

" Surroundings
" '"Hello *world!"           ds"         Hello world!'
" [123+4*56]/2              cs])        (123+456)/2

" Taglist
":help taglist
