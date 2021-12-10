#Ejercicio 1.10.3
#Parte 2

archivos=*.txt
echo $archivos

for data in $archivos; do wc -l $data; done
