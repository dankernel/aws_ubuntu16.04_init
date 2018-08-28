cp ~/.bashrc ~/.bashrc.old
cp bashrc ~/.bashrc
source ~/.bashrc

cp ~/.vimrc ~/.vimrc.old
mkdir ~/.vim
cp vimrc ~/.vimrc

cp -r sh ~/sh

# server time..
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

echo -e "\033[31;1m"$ source ~/.bashrc"\033[m"
