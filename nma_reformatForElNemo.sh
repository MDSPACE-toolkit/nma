#!/bin/bash

dirmodes=modes
out=diag_arpack.eigenfacs
headerfile=header.txt
end=$1

echo " VECTOR    1       VALUE  2.2318E-08" >  $headerfile
echo " -----------------------------------" >> $headerfile
rm -f $out

i=1
while [ $i -le $end ]
do
cat $headerfile $dirmodes/vec.$i >> $out
((i=i+1))
done

rm -f $headerfile
