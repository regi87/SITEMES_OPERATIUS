campo1=$(cat precipitaciones.txt | awk '{ print $1}')
campo2=$(cat precipitaciones.txt | awk '{ print $2}')

resultado=0


for i in $campo1;do
    resultado=$((resultado+i))
done



for i in $campo2;do
    resultado=$((resultado+i))
done
	 
echo "La media de precipitaciones es: " $((resultado/20))
