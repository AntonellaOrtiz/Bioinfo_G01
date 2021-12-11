# Ejercicio 1.10.3
## Parte 1

#cd:ubicación de la data en mi directorio
cd Documents/6to/Bioinformática/CSB-master/unix/data/Saavedra2013
#contando el número de lineas en n.27.txt
wc -l n27.txt
#head:ver la primera fila de n.27.txt
#pipeline |: los comandos se ejecuten en conjunto
#tr -d " ": borrar los espacios vacios
#tr -d "\n": crear una nueva línea
#wc -c: cuenta e imprime el número de carácteres
head -n 1 n27.txt | tr -d " " | tr -d "\n" | wc -c

# falta imprimir contenido

#definiendo variable n
n=n27.txt
#definiendo variable f
f=$(wc -l < n27.txt)
#definiendo variable c
c=$(head -n 1 n27.txt | tr -d " " | tr -d "\n" | wc -c)

echo "Nombre=$n" > ../../../../netsize.txt
echo "Filas=$f" >> ../../../../netsize.txt
echo "Columnas=$c" >> ../../../../netsize.txt

#Mostrar el contenido del archivo
cat ../../../../netsize.txt
