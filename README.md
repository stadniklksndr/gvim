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
