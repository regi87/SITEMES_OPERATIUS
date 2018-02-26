#Escribe un script que pida al usuario un valor del d ́ıa num ́erico del mes (de 1 a 30) y
#muestre por pantalla qu ́e d ́ıa de la semana es, asumiendo que el d ́ıa 1 es lunes. Para
#cualquier valor introducido fuera del rango, se mostrar ́a un mensaje y se volver ́a a pedir


numero=0;
total=0

while [ $numero -lt 1 ] || [ $numero -gt 30 ];do
    read -p "Número a consultar: " numero
    if [ $numero -lt 1 ] || [ $numero -gt 30 ]; then
	echo "Número invalido"
    fi
done


total=`echo "scale=2; ($numero%7)" | bc`

total="${total//./}"
echo $total

 if [ $total -eq 02 ]; then
     echo "LUNES"
 else if [ $total -eq 04 ]; then
	  echo "MARTES"
     else if [ $total -eq 06 ]; then
	       echo "MIERCOLES"
	   else if [ $total -eq 01 ]; then
		    echo "JUEVES"
		else if [ $total -eq 03 ]; then
			 echo "VIERNES"
		     else if [ $total -eq 05 ]; then
			      echo "SABADO"
			  else if [ $total -eq 0 ]; then
				   echo "DOMINGO"
			       fi
			  fi
		     fi
		fi
	  fi
      fi
 fi
 
			       			  

    

