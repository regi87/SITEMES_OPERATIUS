#Escribe un script que pida al usuario un valor hasta que introduzca el 0. Cuando el
#usuario introduzca el 0, se mostrar ́a un mensaje que muestre la suma total de valores
#introducidos as ́ı como el valor medio

x=1
result=0

while [ $x -gt 0 ];do
    read -p "Introduce un valor: " x
    result=$((result+x))
done

echo "El resultado es : " $result
