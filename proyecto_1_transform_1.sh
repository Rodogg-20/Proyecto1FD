#!bin/bash
touch precios.csv
estacion=$(grep -E -o '[0-9]{5}' precios.xml)

grep -E -o '"regular">[0-9]{2}.[0-9]{2}' precios.xml >> aux.csv
precior=$(grep -E -o '[0-9]{2}.[0-9]{2}' aux.csv)

rm aux.csv

paste -d "," <(echo "$estacion") <(echo "$precior") | column -t >> precios.csv

sort -u -t, -k1,1 precios.csv

sed -i 1i"estacion_servicio,regular,premium,diesel" precios.csv
