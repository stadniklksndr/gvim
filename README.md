# Install IDE
```
git clone https://github.com/stadniklksndr/gvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s  ~/.vim/.vimrc ~/.vimrc
sudo apt install exuberant-ctags
sudo apt install fonts-powerline
```
`BundleInstall` - **_run from editor console_** :feet:

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

* Brief help
 * `PluginList` ~ Lists configured plugins
 * `PluginInstall` ~ Installs plugins; Append `!` to update or just `:PluginUpdate`
 * `PluginSearch` ~ Searches plugin; Append `!` to refresh local cache
 * `PluginClean` ~ Confirms removal of unused plugins; Append `!` to auto-approve removal
 * `:h PlaginName` ~ More details about plugin
