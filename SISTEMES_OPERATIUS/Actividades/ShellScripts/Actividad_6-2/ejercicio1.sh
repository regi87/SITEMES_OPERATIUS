
numDir=$1
nombres=$(cat nombres.txt)
echo $nombres

for i in $nombres; do
    $(mkdir ./$i)

    for j in `seq 1 $numDir`;do
	    $(mkdir ./$i/$j)
    

    done
done

