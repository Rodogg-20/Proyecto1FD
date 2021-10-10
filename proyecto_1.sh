#!bin/bash

if [[ ! -e estaciones.xml ]]
then wget https://bit.ly/2V1Z3sm
    mv 2V1Z3sm estaciones.xml
fi

if [[ ! -e precios.xml ]]
then wget https://bit.ly/2JNcTha
  mv 2JNcTha precios.xml
fi
