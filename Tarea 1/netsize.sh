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

#definiendo variabble n
n=n27.txt
#definiendo variable f con lo antes mencionado, añadí el < para que no se imprima
#el nombre del archivo
f=$(wc -l < n27.txt)
#definiendo variable c con lo antes mencionado
c=$(head -n 1 n27.txt | tr -d " " | tr -d "\n" | wc -c)

#echo: imprime lo indicado dentro de " ", >: guarda lo que se imprime en el
#archivo,>>: guarda lo que se imprime sin borrar lo anterior en el mismo archivo
#../:se retrocede directorios hasta llegar al elegido
echo "Nombre=$n" > ../../../../netsize.txt
echo "Filas=$f" >> ../../../../netsize.txt
echo "Columnas=$c" >> ../../../../netsize.txt

#Imprime el contenido del archivo
cat ../../../../netsize.txt
