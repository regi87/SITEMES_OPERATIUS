directorio=$1
ruta=$(find . -name $directorio)

echo $directorio
echo  $ruta

if [ -d "$ruta" ];then
     borrado=$(cd $ruta && rm *.txt )
else
    echo "El directorio no existe"
fi


echo $borrado

