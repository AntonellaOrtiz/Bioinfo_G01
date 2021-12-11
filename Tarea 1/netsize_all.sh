#Ejercicio 1.10.3
#Parte 2

#Crear variable archivo con todos los *.txt de la carpeta Saavedra2013
archivo=*.txt
#echo: imprime lo contenido en la variable
echo $archivo

#Crear el loop con el código hecho en netsize.sh, donde:
#for: data en la variable $archivo creada anteriormente
#do: ejecución de los comandos necesarios y echo para imprimirlos
#done: termina el loop
for data in $archivo; do f=$(wc -l $data); c=$(head -n 1 $data | tr -d " " | tr -d "\n" | wc -c); echo $data $f $c; done

#para guardar en un archivo
#agregar >> para guardar la info en el archivo netsize_all.txt
for data in $archivo; do f=$(wc -l $data); c=$(head -n 1 $data | tr -d " " | tr -d "\n" | wc -c); echo $data $f $c >> ../../../../netsize_all.txt; done

#Mostrar el contenido del archivo
cat ../../../../netsize_all.txt
