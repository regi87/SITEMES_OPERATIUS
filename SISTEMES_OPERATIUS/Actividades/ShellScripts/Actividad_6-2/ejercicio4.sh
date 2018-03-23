numeros=$(cat numeros.txt)
contadorPares=0
contadorImpares=0

pares=""
impares=""

for i in $numeros;do

    if [ $((i%2)) -eq 0 ];then
      	pares=`echo $pares $i`
       contadorPares=$((contadorPares+1))  
    else
	impares=`echo $impares $i`
	contadorImpares=$((contadorImpares+1))
fi
  
done

echo "Listado Pares: $pares"
echo "Listado ImPares: $impares"
echo "Total PARES :" $contadorPares " Total IMPARES: " $contadorImpares
