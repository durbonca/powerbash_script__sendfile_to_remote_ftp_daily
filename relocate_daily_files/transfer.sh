# !/bin/bash
#transferencia y organizacion de los archivos

fecha=$(date '+%Y-%m-%d')
mkdir $fecha
cp -R test1/* $fecha
rm -R test1/*