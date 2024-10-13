cat /proc/meminfo | grep MemTotal > filtrobasico.txt
dmidecode -t chassis | grep -E "Chassis|Manufacturer" >> filtrobasico.txt
