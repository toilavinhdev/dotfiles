sudo dnf install fcitx5-unikey fcitx5-configtool fcitx5-qt fcitx5-gtk fcitx5-autostart -y
&&
echo "GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx" | cat - /etc/enviroment > ~/temp.txt && mv ~/temp.txt /etc/enviroment