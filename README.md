To install neovim:
https://github.com/neovim/neovim/wiki/Installing-Neovim

linux appimage
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

on mac os x with brew
```bash
brew install neovim
```

then, install package manager
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

then download config directory
```
cd ~/.config/ && \
git clone git@github.com:scarpma/nvim.git
```

to install packages
```
:PackerSync
```
