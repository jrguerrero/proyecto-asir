#!/bin/bash

zenity --display=:0 --title='Proyecto' --question --text='¿Quieres Ubuntu o CentOS?' --ok-label='CentOS' --cancel-label='Ubuntu'

if [ $? -eq 0 ]

	then

		sed "s/urlcaja/https:\/\/dl.dropboxusercontent.com\/s\/h7ds4f1qs7exuop\/precise32mod.box?dl=1&token_hash=AAFIRue1cfeM7sFJM6BmaEV7-YLRc99jENdP_qXgWJSjuQ&expiry=1400785957/g" Vagrantfile > prueba

	else

		sed "s/urlcaja/https:\/\/dl.dropboxusercontent.com\/s\/h7ds4f1qs7exuop\/precise32mod.box?dl=1&token_hash=AAFIRue1cfeM7sFJM6BmaEV7-YLRc99jENdP_qXgWJSjuQ&expiry=1400785957/g" Vagrantfile > prueba

fi

nombrecaja=$(zenity --display=:0 --title='Proyecto' --entry --text='¿Qué nombre quieres ponerle a la caja de Vagrant?')

	sed "s/nombrecaja/$nombrecaja/g" prueba > prueba2

puerto=$(zenity --display=:0 --title='Proyecto' --entry --text='¿Qué puerto quieres ponerle a la caja de Vagrant?')

	sed "s/puerto/$puerto/g" prueba2 > prueba3

sqlpass=$(zenity --display=:0 --title='Proyecto' --entry --text='¿Cuál quieres que sea la contraseña de MySQL?')

	sed "s/sqlpass/$sqlpass/g" prueba3 > Vagrantfile

	rm prueba*

nombredb=$(zenity --display=:0 --title='Proyecto' --entry --text='¿Cómo quieres llamar a la base de datos?')

	sed "s/nombredb/$nombredb/g" cookbooks/phpapp/attributes/default.rb > cookbooks/phpapp/attributes/prueba

usuariodb=$(zenity --display=:0 --title='Proyecto' --entry --text='¿Cómo quieres llamar al usuario de la base de datos?')

	sed "s/usuariodb/$usuariodb/g" cookbooks/phpapp/attributes/prueba > cookbooks/phpapp/attributes/default.rb

	rm cookbooks/phpapp/attributes/prueba
