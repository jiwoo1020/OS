#!/bin/bash

ex_dir="$1" #현재 디렉토리라면 .이 들어가는 것이고 *이면 다른 디렉토리가 들어가는 것
echo $dir # 전부
echo "$dir" #count로 읽힘


files=$( ls -l $ex_dir | cut -c 1 | grep -v "d" | wc -l ) #파일의 개수
directs=$( ls -l $ex_dir | cut -c 1 | grep "d" | wc -l ) #디렉의 개수

echo "현재 위치: $ex_dir"