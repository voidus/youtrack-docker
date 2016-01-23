docker build -t youtrack-data data
docker build -t youtrack youtrack
docker run --name youtrack-data-container youtrack-data true
docker run --volumes-from youtrack-data-container -p 127.0.0.1:8080:8000 --rm youtrack

