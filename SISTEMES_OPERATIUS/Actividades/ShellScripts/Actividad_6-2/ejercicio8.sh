
for i in `seq 1 3`;do

   ip=$(ping -c 1 10.2.6.$i)
   comprobar=$(ping -c 1 10.2.6.$i | grep -o "errors" | wc -l)
    if [ $comprobar -gt 0 ];then
	echo "PING ERROR"
    
    else
	echo $ip
    fi
    
done


	 



