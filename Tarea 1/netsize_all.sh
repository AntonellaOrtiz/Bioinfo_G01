#Ejercicio 1.10.3
#Parte 2

archivo=*.txt
echo $archivo

for data in $archivo; do f=(wc -l $data); c=(head -n 1 $data | tr -d " " | tr -d "\n" | wc -c); echo $data; done
