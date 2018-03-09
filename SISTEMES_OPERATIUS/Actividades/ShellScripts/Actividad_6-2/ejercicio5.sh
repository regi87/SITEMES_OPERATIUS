sistema=$(cat listado.txt | awk '{print $2}')
procesos=$(cat listado.txt | awk '{print $3}')

contLin=0
contWin=0
contador=0

arrayConLin[0]=0
posicLin=0
resProcLin=0

arrayConWin[0]=0
posicWin=0
resProcWin=0

for i in $sistema;do

    if [ $i == "Linux" ];then
	contLin=$((contLin+1))
	arrayConLin[$posicLin]=$contador
	posicLin=$((posicLin+1))
    fi

    if [ $i == "Windows" ];then
	contWin=$((contWin+1))
       	arrayConWin[$posicWin]=$contador
	posicWin=$((posicWin+1))
    fi
    contador=$((contador+1))
done

contador=0
contLin=0
contWin=0
limiteLin="${#arrayConLin[@]}"
limiteWin="${#arrayConWin[@]}"


for j in $procesos;do

    if [ $contLin -le $limiteLin ] ;then
	if [ $contador -eq ${arrayConLin[$contLin]} ];then
	    resProcLin=$((resProcLin+j))
	    contLin=$((contLin+1))
	fi
    fi
    
    if [ $contLin -le $limiteWin ] ;then
	if [ $contador -eq ${arrayConWin[$contWin]} ];then
	    resProcWin=$((resProcWin+j))
	    contWin=$((contWin+1))
	fi
   fi
    
   contador=$((contador+1))
done

echo "Linux Usuarios: " $contLin " Procesos: "$resProcLin
echo "Windows Usuarios: " $contWin "Procesos: "$resProcWin
	 
