#!/bin/bash

ROOT_DIR=~/prog/car_detection
TEST_DIR=$ROOT_DIR/vehicles_416x416_yolov5pytorch/test/images
WEIGHTS_PATH=$ROOT_DIR/car_model/weights/best.pt
CUR_DIR=$(pwd)

cd $ROOT_DIR/yolov5

python detect.py --weights $WEIGHTS_PATH --img 416 --conf 0.4 --source $TEST_DIR

cd $CUR_DIR

