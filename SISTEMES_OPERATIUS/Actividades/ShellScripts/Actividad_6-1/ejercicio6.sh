#Escribe  un  script  que  pida  al  usuario  la  cantidad  de  litros  de  agua  consumidos  y muestre el coste total, atendiendo a las siguientes indicaciones:
#Los primeros 50 litros cuestan 20 euros.
#Los restantes hasta 200 litros cuestan a 20 c ́entimos el litro.
#Los restantes cuestan a 10 c ́entimos el litro.
#El script debe funcionar bien con cualquier valor mayor que 0

litros=-1
total_litros=0
total=0
precio2=0.20
precio3=0.10



while [ $litros -le 0 ];do

    read -p "Cantidad litros de agua consumidos: " litros
done

    total=20
    total_litros=$((litros-50))

 if [ $total_litros -gt 0 ]; then

    # echo $total_litros "--" $precio2 "--" $total
     total=`echo "scale=2; ($total_litros*$precio2)"+$total | bc`

     
	 total_litros=$((total_litros-200))

	 if [ $total_litros -gt 0 ]; then
	     #  echo $total_litros "--" $precio3 "--" $total
	     total=`echo "scale=2; ($total_litros*$precio3)+$total" | bc`
	 fi
 fi
 
 

	      echo "Cantidad a pagar :" $total 
		     		     
		      
		     
		      
	    
	     
    
