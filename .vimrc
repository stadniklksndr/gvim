" Required
set nocompatible
filetype off

" Set The Runtime Path To Include Vundle And Initialize
set rtp+=~/.vim/bundle/Vundle.vim


" Alternatively, Pass A Path Where Vundle Should Install Plugins
" Call vundle#begin('~/some/path/here')
call vundle#begin()

" Plug-in manager for Vim ~ https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" Status Line At The Bottom Of Each Window ~ https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'

" Collection of themes for vim-airline ~ https://github.com/vim-airline/vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

" Git wrapper ~ https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" Tree Explorer ~ https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" Syntax Checking
Plugin 'vim-syntastic/syntastic'

" Shows A Git Diff In The Gutter
Plugin 'airblade/vim-gitgutter'

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


" vim-airline (:h airline)
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⭡'

" vim-airline-themes
let g:airline_theme='base16_pop'

" nerdtree
map <F2> :NERDTreeToggle<CR>
map ww :tabnew<CR>:NERDTreeToggle<CR>


" Required! To Ignore Plugin Indent Changes, Instead Use: filetype plugin on
filetype plugin indent on

" Brief help
" :PluginList       - Lists Configured Plugins
" :PluginInstall    - Installs Plugins; Append `!` To Update Or Just :PluginUpdate
" :PluginSearch foo - Searches For Foo; Append `!` To Refresh Local Cache
" :PluginClean      - Confirms Removal Of Unused Plugins; Append `!` To Auto-Approve Removal

" See :h Vundle For More Details Or Wiki For FAQ
" Put Your Non-Plugin Stuff After This Line

" Vim Colors
syntax enable
set background=dark
colorscheme Tomorrow-Night


" NERDTress File Highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"Save File
:map <C-s> :w<cr>

" Syntax Checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

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

" Set vim window
set number
set lines=1000 columns=1000
