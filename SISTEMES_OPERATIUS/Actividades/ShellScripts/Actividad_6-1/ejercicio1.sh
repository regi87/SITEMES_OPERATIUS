
#Escribe un script que pida al usuario dos valores, mostrando un mensaje de cu ́#al es el mayor o de si son iguales.


read -p "Introduce el primer valor: " x
read -p "Introduce el segundo valor: " y


if [ $x -gt $y ];then
    echo "El valor $x es mayor que el valor $y "
else if [ $y -gt $x ];then
	 echo "El valor $y es mayor que el valor $x"
     else
	 "El valor $x y el valor $y són iguales"
     fi
fi
