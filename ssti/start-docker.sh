if [ $# -eq 0 ]
  then
    IP="127.0.0.1" 
else
    IP=$1
fi

docker build -t ssti .
docker run -p $IP:5003:5003 ssti