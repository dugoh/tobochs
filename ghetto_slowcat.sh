[[ -z "${3}" ]] && echo usage: $0 file chunksize waittime && exit
c=0
b=$(wc -c <${1})
  while [ ${c} -lt ${b} ]; do
  dd if=${1} bs=1 count=${2} skip=${c} 2>/dev/null
  (( c = c + ${2} ))
  sleep ${3}
done
