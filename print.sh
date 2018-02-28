cat file `dirname $0`/hello.txt | while read line
do
    sleep 1
    echo $line
done