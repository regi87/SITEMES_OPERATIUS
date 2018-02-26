#Escribe  un  script  que  pida  al  usuario  un  valor  mayor  de  0  y  muestre  un  mensaje
#indicando  si  es  par  o  impar.  El  script  debe  asegurar  que  el  valor  introducido  es correcto, si no, deber ́a mostrar un mensaje y volver a pedirlo.

x=0

while [ $x -lt 1 ]; do
    read -p "Introduce un número mayor que 0: " x
    if [ $x -lt 1 ]; then
	echo "Número no válido"
    else
	echo "Número válido"
	if [ $((x%2)) -eq 0 ]; then
	    echo "Número Par"
	else
	    echo "Número Impar"
	fi
	
    fi
    
done
