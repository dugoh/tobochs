c=0
b=$(wc -c <$1)
s=4
  while [ $c -lt $b ]; do
  dd if=$1 bs=1 count=$s skip=$c 2>/dev/null
  (( c = c + $s ))
  sleep 1
done
