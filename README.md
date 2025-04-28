# Dotfiles

## My Setup
- [Alacritty](https://github.com/alacritty/alacritty/)
- [Crkbd by @tupinikeebs](https://tupinikeebs.com/)
- [Miryoku Keyboard Layout](https://github.com/manna-harbour/miryoku)

## Features
- [fzf](https://github.com/junegunn/fzf)
- [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md)
- [bat](https://github.com/sharkdp/bat?tab=readme-ov-file#installation)
- [zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
- [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [Some Nerd Font](https://www.nerdfonts.com/font-downloads)

## Requirements
- [tmux](https://github.com/tmux/tmux/wiki)
- [tpm](https://github.com/tmux-plugins/tpm)
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [Fish Shell](https://github.com/fish-shell/fish-shell/?tab=readme-ov-file#getting-fish)

## Instalation

### Clone repository
```bash
    git clone https://github.com/SamuelLeutner/dotfiles.git
    cd dotfiles
```

### Copy this dotfiles config 
```bash
    cp tmux/.tmux.conf -r ~/.tmux.conf
```

### Install TPM
```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Access tmux
```bash
    tmux
```

### Source tmux config
```bash
    tmux source ~/.tmux.conf
```

### Install tmux plugins
```bash
     # Ctrl + a and after press I 
     C-a I
```

### Enter nvim and quit to reload settings
```bash
    nvim
    # :q!
```

### Have a fun :)
```bash
    nvim
```
