# Use stow to manage dotfile (.vim, .vimrc etc .files)

## Example Usage
Assume the directory `~/setup-vim/ide-nvim-lua/` has all nvim and `dot-*` file configuration

### Stow the configuration
```
cd ~/setup-vim

stow -S --dotfiles ide-nvim-lua
stow -R --dotfiles ide-nvim-lua

#or

stow -S -d ~/setup-vim -t ~/ ide-nvim-lua

```

#### Unstow/delete the previously stowed configurations
```
stow -D --dotfiles ide-nvim-lua
```

## Key Mappings

