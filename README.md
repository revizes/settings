# Settings
Linux environment settings


## Vim Plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


##  Setting Terminator as a default terminal

```bash
gsettings set org.cinnamon.desktop.default-applications.terminal exec 'terminator'
```

## Themes

### Icons

[papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)

```bash
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
```

### Gnome theme

[Flat Remix Gnome Theme](https://drasite.com/flat-remix-gnome)

```bash
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install flat-remix-gnome
```
