#Escribe un script que pida al usuario una nota y muestre un mensaje de la califica-
#ci ́on que tiene (suspendido, aprobado, bien, notable o sobresaliente). El script debe
#asegurar  que  el  valor  introducido  es  correcto,  si  no,  deber ́a  mostrar  un  mensaje  y
#volver a pedirlo

x=-1

while [ $x -lt 0 ]||[ $x -gt 10 ]; do
      read -p "Introduce una nota: " x
      
done

if [ $x -ge 0 ]&&[ $x -le 4 ]; then
	  echo "Suspendido"
      else if [ $x -eq 5 ]; then
	       echo "Aprobado"
	   else if [ $x -eq 6 ]; then
		    echo "Bien"
		else if [ $x -eq 7 ]|| [ $x -eq 8 ]; then
			 echo "Notable"
		     else
			 echo "Sobresaliente"
		     fi
		fi
	   fi
      fi

	 
      
