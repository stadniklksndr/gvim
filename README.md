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

* [Plugin manager for Vim](https://github.com/VundleVim/Vundle.vim)

* [Status Line At The Bottom Of Each Window](https://github.com/vim-airline/vim-airline)
  * `:h airline` ~ airline-contents

* [Collection of themes for vim-airline](https://github.com/vim-airline/vim-airline-themes)
  * [available themes](https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes)
  * `:AirlineTheme simple` ~ set the theme from gvim
  * `let g:airline_theme='simple'` ~ set in .vimrc

* [Git wrapper](https://github.com/tpope/vim-fugitive)
  * `:Git branch`
  * `:Git checkout master`
  * [more info](https://github.com/tpope/vim-fugitive#fugitivevim)

* [Tree Explorer](https://github.com/scrooloose/nerdtree)
  * `:help NERDTree.txt` ~ nerdtree-contents
  * `<F2>` ~ open nerdtree
  * `ww` ~ new tab
  * `ctrl+w+q` ~ close tab
  * `ctrl + (pgup/pgdn)` ~ change tab
  * `shift + i` ~ toggle hidden files
  * `NERDTreeHighlightFile` ~ add/change nerdtree file highlighting from .vimrc
  * [f.a.q.](https://github.com/scrooloose/nerdtree/wiki/F.A.Q.)

* [Showing git status flags](https://github.com/Xuyuanp/nerdtree-git-plugin)

* [Syntax Checking](https://github.com/vim-syntastic/syntastic)
  * [manual](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt) or `:help syntastic-checkers`
  * `:SyntasticInfo` ~ show you which checkers are enabled for current file

  * Current Settings:

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

* **Brief help**
  * `PluginList` ~ Lists configured plugins
  * `PluginInstall` ~ Installs plugins; Append `!` to update or just `PluginUpdate`
  * `PluginSearch` ~ Searches plugin; Append `!` to refresh local cache
  * `PluginClean` ~ Confirms removal of unused plugins; Append `!` to auto-approve removal
  * `:h PlaginName` ~ More details about plugin

## Help :flashlight:

  * [Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
  * [Find in files within Vim](http://vim.wikia.com/wiki/Find_in_files_within_Vim)
