#!/usr/bin/env bash


source ./.env


echo "[+] Runnning docker env:"
echo "${ML_PROJECT_NAME}"

docker run -v ./working-dir:/home/working-dir --gpus all -p 8888:8888  $ML_PROJECT_NAME jupyter lab --allow-root --ip=0.0.0.0