writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
        echo "Not enough param"
        exit 1
fi

mkdir -p "$(dirname "$writefile")" && touch "$writefile"
echo $writestr >> $writefile
exit 0

