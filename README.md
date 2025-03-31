# Step 1
```
sudo pacman -R nano dolphin
sudo pacman -S wofi kitty freetype2 zsh git hyprlock hyprpaper waybar ttf-font-awesome otf-font-awesome ttf-jetbrains-mono obsidian pavucontrol feh ranger thunar meson nwg-look papirus-icon-theme fastfetch file powerline-fonts inetutils ttf-font-awesome otf-font-awesome ttf-jetbrains-mono neovim code ttf-dejavu bluez bluez-utils blueman telegram-desktop vlc

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S hyprshot onlyoffice-bin wlogout

```

# Step 3

**Add repos**

```
cd Documents

git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
git clone https://github.com/RoyProgramming/hyprlandConfig.git
```

# Step 4

**Copy config**

```
cd hyprlandSettings
cp -r kitty waybar wlogout wofi hypr ~/.config

cd Graphite-gtk-theme
./install.sh
```

# Step 5

**Zsh themes**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

nvim ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source ~/.zshrc

chsh
/bin/zshrc

reboot
```






