# My Work Flow
---
- Here you can find some configuration files like i3, tmux, nvim so on.....
- Peppermint OS comes with debian is my distribution
- I installed Peppermint OS XFCE4 edition but i use i3-wm

## nvim 
---
- Create a `~/.config/nvim/init.vim` file, copy the config and paste
- Go to `https://github.com/junegunn/vim-plug` here copy and Execute the below line     
```bash
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- BTW , I use arrow keys. 
- Inside vim at normal mode type :PlugInstall
- Coc is the Extension in this you can install language servers

## i3
---
- install the i3 by `sudo apt install i3` for debian, install as per your distribution
- create a config file at `~/.config/i3/config` paste the config file
- Need to practice some keymaps
- after config you need to reload the wm by `mod+shift+r` it will update to new config

## tmux
---
- installation `sudo apt install tmux`
- create a file in at `~/.tmux.conf` paste the config
- after creation reload the tmux by `tmux source-file ~/.tmux.conf` on shell

## fish
---
- i am using fish for better workflow on terminal
- create a fish config by `~/.config/fish/config.fish` file paste the config 




