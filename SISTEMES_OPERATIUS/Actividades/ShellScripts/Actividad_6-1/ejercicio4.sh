#Escribe  un  script  que  pida  al  usuario  un  valor  mayor  que  0  y  muestre  el  listado
#de n ́umeros que van desde 0 hasta este valor. El script debe asegurar que el valor
#introducido es correcto, si no, deber ́a mostrar un mensaje y volver a pedirlo

x=-1
i=0
while [ $x -le 0 ];do
    read -p "Introduce un valor mayor que 0 :" x
    if [ $x -le 0 ]; then
       echo "Valor NO válido "
    fi
done


for i in  `seq $i $x`; do
    echo "Número: "$i
done

