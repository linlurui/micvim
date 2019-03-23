# micvim
</p>
    <img align="right" src="https://github.com/linlurui/entityQueryable/blob/master/pay5.jpg" alt="捐赠给作者"  width="200">
    <p align="right">
        <em>捐赠给作者</em>
    </p>
</p>
## Installation

### 1. setup colors

Copy the file molokai.vim on your .vim/colors folder on mac or ubantu.

when os is centos then:
```sh
 cp micvim/molokai.vim /usr/share/vim/vim74/colors
```


### 2. setup config

Copy the file ".vimrc" on your ~/ folder.


### 3. get vundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### 4. setup pathogen

Install to `~/.vim/autoload/pathogen.vim`.
Or copy and paste the following into your terminal/shell:

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles`.

### 5. Download & Copy plug.vim to autoload dir.
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 6. Install syntastic as a Pathogen bundle

You now have pathogen installed and can put syntastic into `~/.vim/bundle` like
this:
```sh
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
```
Quit vim and start it back up to reload it, then type:
```vim
:Helptags
```
If you get an error when you do this, then you probably didn't install
[Pathogen][pathogen] right. Go back to [Step 1](#step1) and make sure you did the
following:

1. Created both the `~/.vim/autoload` and `~/.vim/bundle` directories.
2. Added the `execute pathogen#infect()` line to your `~/.vimrc` file
3. Did the `git clone` of syntastic inside `~/.vim/bundle`
4. Have permissions to access all of these directories.


### 7. Install Plugins

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall

### 8. (optional) For those using the fish shell: add set shell=/bin/bash to your .vimrc
