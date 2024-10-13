echo Mi IP Publica es: $(curl -s ifconfig.me) > filtroavanzado.txt
echo Mi usuario es: $(sudo cat /etc/passwd | grep $(whoami) | awk -F ':' '{print $1}') >> filtroavanzado.txt
echo "El hash de mi usuario es: $(cat /etc/shadow | grep $(whoami) | awk -F ':' '{print$2}')" >> filtroavanzado.txt

