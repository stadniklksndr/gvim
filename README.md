# Install IDE
```
git clone https://github.com/stadniklksndr/gvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s  ~/.vim/.vimrc ~/.vimrc
sudo apt install exuberant-ctags
sudo apt install fonts-powerline
```
`BundleInstall` - **_run from editor console_** :feet:


## Install syntax checkers
  * `npm list --depth=0` ~ version of an installed npm package
  * `npm list -g --depth=0` ~ global version of an installed npm package
  * [sudo npm install standard --global](https://standardjs.com/)
  * [sudo npm install -g coffeelint](http://www.coffeelint.org/)
  * [css & scss stylelint](https://stylelint.io/)
    * [sudo npm install -g stylelint](https://stylelint.io/)
    * [sudo npm install -g stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard)
    * Add `.stylelintrc.json` to root of your project

## Plugins :children_crossing:

* [Plugin manager](https://github.com/VundleVim/Vundle.vim)

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
  * `:help NERDTree.txt` ~ nerdtree-contents
  * `<F2>` ~ open nerdtree
  * `ww` ~ new tab
  * `ctrl+w+q` ~ close tab
  * `ctrl + (pgup/pgdn)` ~ change tab
  * `shift + i` ~ toggle hidden files
  * `NERDTreeHighlightFile` ~ add/change nerdtree file highlighting from .vimrc
  * `m` ~ nerdtree menu for add, move, delete, and copy file (call from tree window)
  * [f.a.q.](https://github.com/scrooloose/nerdtree/wiki/F.A.Q.)

* [Showing git status flags](https://github.com/Xuyuanp/nerdtree-git-plugin)

* [Syntax checking](https://github.com/vim-syntastic/syntastic)
  * [manual](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt) or `:help syntastic-checkers`
  * `:SyntasticInfo` ~ show you which checkers are enabled for current file

  * Current settings:

    * `ruby_checkers` ~ `mri`, [rubocop](https://github.com/bbatsov/rubocop)
    * `javascript_checkers` ~ [standard](https://github.com/feross/standard), automatic-formatter by `<F3>`
    * `coffee_checkers` ~ [coffeelint](http://www.coffeelint.org/)
    * `css_checkers` ~ [stylelint](https://stylelint.io/)
    * `scss_checkers` ~ [stylelint](https://stylelint.io/)

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

* [surround](https://github.com/kana/vim-surround)
  * insert mode
    * `ctrl + s + =` ~ <%= %>
    * `ctrl + s + -` ~ <% -%>

* [Rails](https://github.com/tpope/vim-rails)
  * `gf` ~ open file under cursor, `:help rails-gf` ~ details
  * `:AV` ~ jump to an "alternate" file (test), `:help rails-alternate-related` ~ details
  * `:RV` ~ jump to "related" file (migration)
  * `:2,3Extract post` ~ create a post partial from 2,3 lines
  * `:[range]Extract {helper}` ~ Create a {name} helper from [range] lines (default:current line)
  * `:[range]Extract {concern}` ~ Create a {name} concern from [range] lines (default: current line)
  * `:Preview [path]` ~ Open the given path for the current app in a browser
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

* **Brief help**
  * `PluginList` ~ lists configured plugins
  * `PluginInstall` ~ installs plugins; Append `!` to update or just `PluginUpdate`
  * `PluginSearch` ~ searches plugin; Append `!` to refresh local cache
  * `PluginClean` ~ confirms removal of unused plugins; Append `!` to auto-approve removal
  * `:h PlaginName` ~ more details about plugin

## Help :flashlight:
  * [Vimawesome](https://vimawesome.com/)
  * [Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
  * [Find in files within Vim](http://vim.wikia.com/wiki/Find_in_files_within_Vim)
