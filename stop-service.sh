#!/bin/bash

docker compose -f docker-compose.master.yml -f docker-compose.worker.yml -f docker-compose.worker2.yml -f docker-compose.worker3.yml down