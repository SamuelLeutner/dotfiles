# Dotfiles

## Requirements
- [tmux](https://github.com/tmux/tmux/wiki)
- [tpm](https://github.com/tmux-plugins/tpm)
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

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
