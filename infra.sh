#!/bin/bash

docker build -t controller_image controller/
sleep 4
docker build -t frontend_image frontend/
sleep 4
docker build -t backend_image backend/
sleep 4

docker run --privileged --name controller -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d controller_image
sleep 3

for i in {1..2}
        do docker run --privileged --name frontend-$i -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d frontend_image
	sleep 3
        done

for i in {1..2}
        do docker run --privileged --name backend-$i -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d backend_image
        sleep 3
        done
