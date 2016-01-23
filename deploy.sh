#!/bin/sh
# build the docker images
docker build -t youtrack-data data
docker build -t youtrack youtrack

#run the data container, which will store youtrack's data
docker run --name youtrack-data-container youtrack-data true

#Launch youtrack, in foreground. Use ctrl-c to close. Run with -d to launch in background.
docker run --volumes-from youtrack-data-container -p 127.0.0.1:8080:8000 --rm youtrack
