#Escribe  un  script  que  pida  al  usuario  la  cantidad  de  litros  de  agua  consumidos  y muestre el coste total, atendiendo a las siguientes indicaciones:
#Los primeros 50 litros cuestan 20 euros.
#Los restantes hasta 200 litros cuestan a 20 c ́entimos el litro.
#Los restantes cuestan a 10 c ́entimos el litro.
#El script debe funcionar bien con cualquier valor mayor que 0

litros=-1
total_litros=0
total=0
precio2=0.20



while [ $litros -le 0 ];do

    read -p "Cantidad litros de agua consumidos: " litros
done

if [ $litros -lt 51 ]; then
    total=20
    echo "Precio total 20€"

else if [ $litros -gt 50  ]; then
	 total_litros=$litros-50
	 total=  $((total_litros \* precio2 | bc -l))
      
    
     fi
fi


echo "Cantidad a pagar :" $total 
		     		     
		      
		     
		      
	    
	     
    
