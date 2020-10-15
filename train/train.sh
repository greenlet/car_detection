#!/bin/bash

ROOT_DIR=~/prog/car_detection
TRAIN_DIR=$ROOT_DIR/car_model/train
WEIGHTS_PATH=$ROOT_DIR/yolov5_models/yolov5s.pt
DATA_CONFIG_PATH=$TRAIN_DIR/data.yaml
MODEL_CONFIG_PATH=$TRAIN_DIR/yolov5s.yaml

cd $ROOT_DIR/yolov5

python train.py --weights $WEIGHTS_PATH --img 416 --batch 16 --epochs 300 --data $DATA_CONFIG_PATH \
  --cfg $MODEL_CONFIG_PATH --name vehicles --cache

cd $TRAIN_DIR

