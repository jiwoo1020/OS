#!/bin/bash

#날짜를 입력받아(may 27 2024) 유효 유무 판단
#case 인수개수 3개 아니면 종료코드 
#$# : 인수개수 

month=$1
day=$2
year=$3

if [ ! $# = 3 ]
then
	echo "입력값 오류"
	exit 1
else
case $1 in
jan | january | 1) $1="Jan" ;;
feb | february | 2) $1="Feb" ;;
mar | march | 3) $1="Mar" ;;
apr | april | 4) $1="Apr" ;;
may | 5) $1="May" ;;
jun | june | 6) $1="June" ;;
jul | july | 7) $1="Jul" ;;
aug | august | 8) $1="Aug" ;;
sep | september | 9) $1="Sep" ;;
oct | october | 10) $1="Oct" ;;
nov | november | 11) $1="Nov" ;;
dec | december | 12) $1="Dec" ;;
*) echo "입력값 오류" ;;
#인자 세개 아니면 종료 
#월 대문자로 바꾸기 
if [ $1 = "Feb" ] && [ $1 % 4 = 0 ] && [ $1 % 100 != 0 ]
then #윤년 
	if [ $2 = [0-29] ]
	then
		echo $1 $2 $3 
	else 
		echo "윤년이므로 29일까지만 존재해 $1 $2 $3은 유효하지 않습니다"
else #윤년 아님 
	case $1 in 
	"Jan" | "Mar" | "May" | "Jul" | "Aug" | "Oct" | "Dec") 
	if [ $2 = [1-31] ]
	then
		echo $1 $2 $3
	else 
		echo "31일까지만 존재해 $1 $2 $3은 유효하지 않습니다"
	"Apr" | "jan" | "Sep" | "Nov") 
	if [ $2 = [1-30] ]
	then
		echo $1 $2 $3
	else 
		echo "30일까지만 존재해 $1 $2 $3은 유효하지 않습니다"
	*) 
	if [ $2 = [1-28] ]
	then
		echo $1 $2 $3
	else 
		echo "28까지만 존재하므로 $1 $2 $3은 유효하지 않습니다"

	esac 
	
	



