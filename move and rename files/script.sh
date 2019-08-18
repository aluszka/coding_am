dir=$1
find $dir -name "myfile.txt" -type f | while read file
do
    base=$(basename $file)
    dirpath=$(dirname $file)
    extr=$(echo $file | awk -F/ '{print $(NF-2)}')
    mv $file $dirpath/$extr-$base
done