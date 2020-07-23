# Settings
Linux environment settings


## 타자 치는데 터치패드가 자꾸 건드려서 빡친다면?

터미널에서 입력하자
```bash
$ syndaemon -t -i 1 -d
```

키보드 입력과 동시에 1초간 터치패드가 멈춤이 된다.
느림보라면 1 대신에 2를 쳐도 된다.

Reference : [유용한 어플리케이션 : 내가 좋아하고 당신이 좋아할만한 소프트웨어 : 바람직한 우분투 초보자 문서](https://wiki.ubuntu-kr.org/index.php/%EC%9C%A0%EC%9A%A9%ED%95%9C_%EC%96%B4%ED%94%8C%EB%A6%AC%EC%BC%80%EC%9D%B4%EC%85%98_:_%EB%82%B4%EA%B0%80_%EC%A2%8B%EC%95%84%ED%95%98%EA%B3%A0_%EB%8B%B9%EC%8B%A0%EC%9D%B4_%EC%A2%8B%EC%95%84%ED%95%A0%EB%A7%8C%ED%95%9C_%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4_:_%EB%B0%94%EB%9E%8C%EC%A7%81%ED%95%9C_%EC%9A%B0%EB%B6%84%ED%88%AC_%EC%B4%88%EB%B3%B4%EC%9E%90_%EB%AC%B8%EC%84%9C#.ED.83.80.EC.9E.90_.EC.B9.98.EB.8A.94.EB.8D.B0_.ED.84.B0.EC.B9.98.ED.8C.A8.EB.93.9C.EA.B0.80_.EC.9E.90.EA.BE.B8_.EA.B1.B4.EB.93.9C.EB.A0.A4.EC.84.9C_.EB.B9.A1.EC.B9.9C.EB.8B.A4.EB.A9.B4.3F)

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
