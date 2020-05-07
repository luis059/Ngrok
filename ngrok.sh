#!/bin/bash

while :
do
	echo -e -n " ¿Quieres Instalar Ngrok?

	[1] SI
	[2] NO
>>> "

read -r respuesta

[ "$respuesta" == "1" ]||[ "$respuesta" == "2" ] && break

echo -e "OPCION INCORRECTA"
sleep 2
clear
done

case $respuesta in
	1)
	echo -e "Instalando Ngrok..."
	chmod 777 ngrok-stable-linux-arm.zip
	unzip ngrok-stable-linux-arm.zip
	cp ngrok $PREFIX/bin

	echo -e -n "Escriba el authtoken de ngrok  >>>"

	read -r  Nauthotoken
$Nauthotoken
clear

echo -e "Ngrok Instalado Correctamente"
;;

2) echo "Gracias Por Usar Mi Script"
esac

