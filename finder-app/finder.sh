filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
	echo "Not enough param"
	exit 1
fi
if [ ! -d "$filesdir" ]; then
	echo "param 1 is not file dir in system"
	exit 1
fi
X=$(ls -l "$filesdir" | wc -l)
X=$((X-1))
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)
echo "The number of files are "$X" and the number of matching lines are "$Y" "
exit 0

