NUM1=100
NUM2=200
SUM=$((NUM1+NUM2))
echo "Sum is ${SUM}"
NAME="DevOps"
SUM1=$((NUM1+NAME))
echo "sum1 is $SUM1"
echo $NAME
echo "---------------"
NAME=DevOps123
echo $NAME

echo "Arrays--------"
Array=("Linux", "Shell", "Docker")
echo "All : ${Array[@]}"
echo "All : ${Array[2]}"
echo "All : ${Array[1]}"
echo "End- Arrays"

