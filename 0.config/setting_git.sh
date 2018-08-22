echo -e '\E[34m'"\033[1mName : \033[0m\c"
read name
echo -e '\E[34m'"\033[1mMail : \033[0m\c"
read mail

git config --global user.name $name
git config --global user.email $mail
