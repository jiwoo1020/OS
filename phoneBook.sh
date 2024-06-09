#!/bin/bash


if [ $# -ne 2 ] 
then
  echo "인수는 2개만 입력해야 합니다."
  exit 1
fi

#잘못된 입력값 판별하기 

if [[ ! "$2" =~ ^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$ ]] 
then
  echo "잘못된 입력입니다"
  exit 1
fi

#검색 
searchName=$( grep $1 phoneNumber.txt | cut -f1 )
if [ -n "$searchName" ]
then
  searchNumber=$( grep $2 phoneNumber.txt |cut -f2 )
  if [ -n "$searchNumber" ]
  then
    echo "존재하는 전화번호"
    exit 0
  else #전화번호 없어서 추가 
    cat $1 $2 >> phoneNumber.txt
  fi
else 
  echo "존재하지 않는 이름 "
fi

areaNumber=$(echo "$2" | cut -d- -f1)
case $areaNumber in
  02) area="서울" ;;
  031) area="경기" ;;
  032) area="인천" ;;
  051) area="부산" ;; 
  061) area="대구" ;;  
  032) area="인천" ;;
  053) area="대구" ;;
esac
echo $area >> phoneNumber.txt


