# windows

for f in *
do 

fdatetime=`date -r $f "+ %d-%m-%Y  %H:%M:%S"`

if [ -d $f ]
then
echo " $f \t\t<dir>\t $fdatetime"
else
f_size=`cat $f | wc -c `
echo " $f\t\t $f_size \t $fdatetime"
fi
done


