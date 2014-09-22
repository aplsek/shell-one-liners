DIR=$1
CLASS=$2

JARS=`find  $DIR -type f | grep jar`





for jar in $JARS
do
#  do echo $i; jar -tvf $i | grep -Hsi $CLASS;
  match=`jar -tvf $jar | grep $CLASS`
  if [ ! -z "$match" ]
  then
    echo "Found in: $jar"
    echo "$match"
  fi
done
