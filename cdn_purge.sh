#!/bin/bash
# 用法: ./cdn_purge.sh 文件名.png
# 示例: ./cdn_purge.sh process_scheduling_algorithm.png

if [ -z "$1" ]; then
  echo "用法: ./cdn_purge.sh <文件名>"
  echo "示例: ./cdn_purge.sh my_image.png"
  exit 1
fi

URL="https://purge.jsdelivr.net/gh/111crab/ImageBed@main/ShiKoTo_UE/$1"

echo "正在刷新 CDN: $1"
RESPONSE=$(curl -s "$URL")
echo "结果: $RESPONSE"
