# Install IDE
```
sudo apt-get install vim-gnome OR (sudo apt install vim-gtk3)
git clone https://github.com/stadniklksndr/gvim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s  ~/.vim/.vimrc ~/.vimrc
sudo apt install exuberant-ctags
sudo apt install fonts-powerline
sudo apt install wmctrl
```
`BundleInstall` - **run from Vim command line** :feet:


## Install syntax checkers :pill:
  * [sudo npm install -g standard](https://standardjs.com/)
  * [sudo npm install -g coffeelint](http://www.coffeelint.org/)
  * [css & scss stylelint](https://stylelint.io/)
    * [sudo npm install -g stylelint](https://stylelint.io/)
    * [sudo npm install -g stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard)
    * Add `.stylelintrc.json` to root of your project `required`

  * npm help
    * `npm list --depth=0` ~ version of an installed npm package
    * `npm list -g --depth=0` ~ global version of an installed npm package

## Commands :floppy_disk:

* `G` &nbsp; &nbsp; &nbsp; - take me to the bottom of the page
* `gg` &nbsp;  &nbsp; - take me to the top of the page
* `{`, `}` - skips block of code 
* `20j` - move cursor to position + 20 line
* `10k` - move cursor to position - 10 line
* `2}` - move cursor to position + 2 block
* `2{` - move cursor to position - 2 block
* `dd` - delete line (also you can paste delited line using `p`)
* `u` - undo delete
* `.` - run last command again
* `yy` - copy line
* `p` - paste below
* `P` - paste above
* `o` - add new line below and put you in insert mode (letter)
* `O` - add new line above and put you in insert mode
* `w` - move to the next word
* `b` - move in reverse direction
* `:20` - go to the specific line
* `0` - takes you to the begin of current line (zero)
* `^` - takes you to the bigin of code in current line
* `$` - takes you to the end of the line
* `t{any letter or sybol}` - take you to chosen letter in line
* `f{letter || sybol}` - takes you to letter and highlight it in line
* `%` - switches between `{`, `}` and so on
* `d%` - delete everything in (), for example `(this will be deleted)`
* `cw` - reword word (set cursor at the begin of word)
* `dw` - delete word (set cursor at the begin of word)
* `D` - delete everything from tre right of cursor
* `C` - delete everything from tre right and put you into insert mode
* `ct{letter || symbol}` - delete everything up to chosen letter and put you into insert mode
* `dt{letter || symbol}` - delete everything up to chosen letter
* `shift+*` - highlight current word everything in the file
* `n` - switches between highlighted words
* `a` - takes you in insert mode over the one letter
* `A` - takes you into insert mode to the end of the line
* `I` - takes you into insert mode to start of the line
* `x` - delete current letter
* `~` - makes letter Up or Down
* `r{letter}` - replaces letter
* `<`, `>` - moves highlighted code
* `<<`, `>>` - moves current line
## Marks
* Use m{a-zA-z} to set a mark point in your document
* Use '{a-zA-Z} to jump to a set mark point
## Execute command
 * :!<command>
 * :!ls - example
 * :!python % => % is current filename

## Plugins :children_crossing:

* [Plugin manager](https://github.com/VundleVim/Vundle.vim)

* [Syntax checking](https://github.com/vim-syntastic/syntastic)
  * [manual](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt) or `:help syntastic-checkers`
  * `:SyntasticInfo` ~ show you which checkers are enabled for current file

  * Current settings:

    * `ruby_checkers` ~ `mri`, [rubocop](https://github.com/bbatsov/rubocop), rubocop auto-correct by `<F5>`
    * `javascript_checkers` ~ [standard](https://github.com/feross/standard), automatic-formatter by `<F3>`
    * `coffee_checkers` ~ [coffeelint](http://www.coffeelint.org/)
    * `css_checkers` ~ [stylelint](https://stylelint.io/)
    * `scss_checkers` ~ [stylelint](https://stylelint.io/)

* [Status line at the bottom of each window](https://github.com/vim-airline/vim-airline)
  * `:h airline` ~ airline-contents

* [Collection of themes for vim-airline](https://github.com/vim-airline/vim-airline-themes)
  * [available themes](https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes)
  * `:AirlineTheme simple` ~ set the theme from gvim
  * `let g:airline_theme='simple'` ~ set in .vimrc

* [Git wrapper](https://github.com/tpope/vim-fugitive)
  * `:Git branch`
  * `:Git checkout master`
  * [more info](https://github.com/tpope/vim-fugitive#fugitivevim)

* [Tree explorer](https://github.com/scrooloose/nerdtree)
  * `:help NERDTree.txt` ~ nerdtree contents
  * `<F2>` ~ open nerdtree
  * `ww` ~ new tab
  * `ctrl+w+q` ~ close tab
  * `ctrl + (pgup/pgdn)` ~ change tab
  * `shift + i` ~ toggle hidden files
  * `NERDTreeHighlightFile` ~ add/change nerdtree file highlighting from .vimrc
  * `m` ~ nerdtree menu for add, move, delete, and copy file (call from tree window)
  * [f.a.q.](https://github.com/scrooloose/nerdtree/wiki/F.A.Q.)

* [Showing git status flags](https://github.com/Xuyuanp/nerdtree-git-plugin)

* [Git diff in the gutter](https://github.com/airblade/vim-gitgutter)
  * Jump between hunks:
    * `]c` ~ jump to next hunk
    * `[c` ~ jump to previous hunk

  * Turn line highlighting on and off (defaults to off):
    * `:GitGutterLineHighlightsEnable` ~ turn on
    * `:GitGutterLineHighlightsDisable` ~ turn off

* [Grep - search tool](https://github.com/vim-scripts/grep.vim)
  * `/` - search in current file
  * `ctrl + f` ~ global search

* [Colorscheme pack](https://github.com/flazz/vim-colorschemes)
  * `colorscheme nameofcolorscheme` ~ change the colorscheme from `.vimrc`
  * `:colorscheme molokai` ~ inside vim
  * [colors](https://github.com/flazz/vim-colorschemes/tree/master/colors)
  * `Tomorrow-Night` ~ current color

* [Endwise](https://github.com/tpope/vim-endwise)

* [Surround](https://github.com/kana/vim-surround)
  * insert mode
    * `ctrl + s + =` ~ <%= %>
    * `ctrl + s + -` ~ <% -%>

* [Rails](https://github.com/tpope/vim-rails)
  * `gf` ~ open file under cursor, `:help rails-gf` ~ details
  * `:AV` ~ jump to an "alternate" file (test), `:help rails-alternate-related` ~ details
  * `:RV` ~ jump to "related" file (migration)
  * `:2,3Extract post` ~ create a post partial from 2,3 lines
  * `:[range]Extract {helper}` ~ create a {name} helper from [range] lines (default:current line)
  * `:[range]Extract {concern}` ~ create a {name} concern from [range] lines (default: current line)
  * `:Preview [path]` ~ open the given path for the current app in a browser
  * `:Rails console` ~ call rails console
  * `:Generate controller Blog` ~ generates a blog controller
  * `:Rails` ~  run the current test, spec, or feature
  * [manual](https://github.com/tpope/vim-rails/blob/master/doc/rails.txt) OR `:help rails.txt`

* [CoffeeScript support](https://github.com/kchmck/vim-coffee-script)
  * [:CoffeeWatch vert](https://github.com/kchmck/vim-coffee-script#coffeewatch-live-preview-compiling)   - OR -   `<F4>` ~ live preview compiling
  * [:CoffeeRun](https://github.com/kchmck/vim-coffee-script#coffeerun-run-coffeescript-snippets) ~ run coffee script snippets

* [Haml](https://github.com/tpope/vim-haml)

* [Slim](https://github.com/slim-template/vim-slim)

* [Pug (formerly Jade)](https://github.com/digitaltoad/vim-pug)

* [Auto-pairs](https://github.com/jiangmiao/auto-pairs)
  * [shortcuts](https://github.com/jiangmiao/auto-pairs#shortcuts)

* [Commentary](https://github.com/tpope/vim-commentary)
  * `\\` ~ toggle comments

* [Tabular](https://github.com/godlygeek/tabular)

* [Taglist](https://github.com/vim-scripts/taglist.vim)
  * `:help taglist` ~ more information

* [Fuzzy finder](https://github.com/kien/ctrlp.vim)
  * `:CtrlP or :CtrlP [starting-directory]` ~ invoke ctrlp in find file mode

* **Commands**
  * `ctrl+s` ~ save file
  * `alt+down` ~ move line down
  * `alt+up` ~ move line up
  * `ctrl+o` ~ previous file
  * `ctrl+i` ~ back to last opened file

* **Brief help**
  * `PluginList` ~ lists configured plugins
  * `PluginInstall` ~ installs plugins; Append `!` to update or just `PluginUpdate`
  * `PluginSearch` ~ searches plugin; Append `!` to refresh local cache
  * `PluginClean` ~ confirms removal of unused plugins; Append `!` to auto-approve removal
  * `:h PlaginName` ~ more details about plugin

## Help :flashlight:
  * [Vimawesome](https://vimawesome.com/)
  * [Best of vim tips](http://zzapper.co.uk/vimtips.html)
  * [Find in files within vim](http://vim.wikia.com/wiki/Find_in_files_within_Vim)
