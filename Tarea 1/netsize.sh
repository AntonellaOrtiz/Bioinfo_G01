# Ejercicio 1.10.3
## Parte 1.1

cd Documents/6to/Bioinformática/CSB-master/unix/data/Saavedra2013
wc -l n27.txt
head -n 1 n27.txt | tr -d " " | tr -d "\n" | wc -c

# falta imprimir contenido
n=n27.txt
f=$(wc -l < n27.txt)
c=$(head -n 1 n27.txt | tr -d " " | tr -d "\n" | wc -c)

echo "Nombre=$n" > ../../../../resultados.txt
echo "Filas=$f" >> ../../../../resultados.txt
echo "Columnas=$c" >> ../../../../resultados.txt
cat ../../../../resultados.txt
