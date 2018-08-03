#!/bin/sh

# Per-pro
jupyter notebook --generate-config
file="$HOME/.jupyter/jupyter_notebook_config.py"
cp $file $file'.old'

# Pass
python sha1.py > pass.txt
read sha1 < pass.txt
echo $sha1
sed -i "/c.NotebookApp.password =/c\c.NotebookApp.password = '$sha1'" $file

# IP
ifconfig | grep -v inet6 | grep -v 127.0.0.1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' > ip.txt
read ip < ip.txt
echo $ip
sed -i "/c.NotebookApp.ip =/c\c.NotebookApp.ip = '$ip'" $file

# Port
sed -i "/c.NotebookApp.port =/c\c.NotebookApp.port = 8888" $file

# Open browser
sed -i "/c.NotebookApp.open_browser =/c\c.NotebookApp.open_browser = False" $file

# rm files
rm pass.txt
rm ip.txt
