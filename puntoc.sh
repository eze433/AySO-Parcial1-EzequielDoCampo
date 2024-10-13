useradd developer1
useradd tester1
useradd devops1
useradd devops2
cat /etc/passwd | tail

groupadd grupodevops
groupadd grupodevelopers
groupadd grupotesters

usermod -aG grupodevelopers developer1
usermod -aG grupodevops developer1
usermod -aG grupodevops devops1
usermod -aG grupodevelopers devops1
usermod -aG grupodevops devops2
usermod -aG grupotesters tester1
id tester1 && id developer1 && id devops1 && id devops2

chmod -R u=rwx,g=rwx,o=rx Examenes-UTN/profesores
chmod -R u=rwx,g=,o= Examenes-UTN/alumno_3
chmod -R u=rwx,g=rw,o= Examenes-UTN/alumno_2
chmod -R u=rwx,g=rx,o= Examenes-UTN/alumno_1

chown -R developer1:grupodevelopers Examenes-UTN/alumno_1
chown -R tester1:grupotesters Examenes-UTN/alumno_2
chown -R devops1:grupodevops Examenes-UTN/alumno_3
chown -R devops2:grupodevops Examenes-UTN/profesores

whoami > Examenes-UTN/alumno_1/validar.txt
whoami > Examenes-UTN/alumno_2/validar.txt
whoami > Examenes-UTN/alumno_3/validar.txt
whoami > Examenes-UTN/profesores/validar.txt


