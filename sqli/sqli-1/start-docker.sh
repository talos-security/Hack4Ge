if [ $# -eq 0 ]
  then
    IP="127.0.0.1" 
else
    IP=$1
fi

docker build -t sqli .
docker run -d -p $IP:5000:5000 sqli