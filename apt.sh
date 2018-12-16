sudo cp  /etc/apt/sources.list  /etc/apt/sources.list.old  
                                                                                                         
echo "vim /etc/apt/sources.list"                                                                      
echo ":%s/archive.ubuntu.com/ftp.daumkakao.com/" 
echo ":%s/security.ubuntu.com/ftp.daumkakao.com/" 
