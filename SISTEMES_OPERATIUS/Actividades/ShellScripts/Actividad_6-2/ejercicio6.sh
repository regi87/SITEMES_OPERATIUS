directorio=$1
ruta=$(find . -name $directorio)

echo $directorio
echo  $ruta

borrado=$(cd $ruta && rm *.txt )

echo $borrado
