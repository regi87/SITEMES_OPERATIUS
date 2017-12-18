diff file1 f1 > res
diff file2 f2 >> res
diff res1 r1 >> res

l=`cat res | wc -l`

if [ $l -eq "0" ]; then
    echo "EL FICHERO SE HA GENERADO CORRECTAMENTE!!!"
else
    echo "Error!"
fi
    