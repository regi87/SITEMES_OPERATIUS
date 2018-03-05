numeros=$(cat numeros.txt)
contadorPares=0
contadorImpares=0

for i in $numeros;do

    if [ $((i%2)) -eq 0 ];then
       echo "NÚMERO PAR: "$i
       contadorPares=$((contadorPares+1))
    
    else
	echo "NÚMERO IMPAR: " $i
	contadorImpares=$((contadorImpares+1))
fi
  
done

echo "Total PARES :" $contadorPares " Total IMPARES: " $contadorImpares
