#!/bin/bash
a=10
#no blank space
b=17
s="Hello,my friend"
echo $a
echo $b
echo $(($a+$b)) $(($b/$a))
echo $s
#string long
echo ${#s}
#split
echo ${s#Hel*,}

echo '--------------------'
filename=$HOME/a.sh
echo $filename
test -f $filename && echo "yes" || echo 'no'
test -d $filename && echo "yes" || echo 'no'
test -r $filename && echo "yes" || echo 'no'
test -w $filename && echo "yes" || echo 'no'
test -x $filename && echo "yes" || echo 'no'

echo '--------------------'
if [ $a = $b ];then
echo 'equal'
else
echo 'unequal'
fi

echo 'please input a number:'
read num
if [ $num = 1 ];then
echo 'A'
cat /proc/cpuinfo
elif [ $num = 2 ];then
echo 'B'
cat /proc/meminfo
elif [ $num = 3 ];then
echo 'C'
cat /proc/version
else
echo 'D'
df -h
fi

echo 'please input a number:'
read num
case $num in
1)
echo 'A'
cat /proc/cpuinfo;;
2)
echo 'B'
cat /proc/meminfo;;
3)
echo 'C'
cat /proc/version;;
*)
echo 'D'
df -h;;
esac

if [ 3 -gt 2 ];then
echo 'a'
else
echo 'b'
fi

a=5
while [ $a -gt 0 ]
do
echo $a
a=$(($a-1))
done

case $1 in
1)
echo a;;
2)
echo b;;
3)
echo c;;
esac

for i in 1 2 3 4 5
do
echo $i
done
 
echo $# $0 $1 $2 $$
