directorio=$1
ruta=$(find . -name $directorio)

echo $directorio
echo  $ruta

if [ -d "$ruta" ];then
	echo "Borrado el fichero los txt del directorio: $directorio"
    	borrado=$(cd $ruta && rm *.txt )
else
    echo "El directorio no existe"
fi


echo $borrado

