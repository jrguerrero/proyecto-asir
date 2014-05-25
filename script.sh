#!/bin/bash

scriptvagrant()

{

zenity --display=:0 --title='Proyecto Integrado' --question --text='¿Quieres CentOS o Ubuntu?' --cancel-label='CentOS' --ok-label='Ubuntu'

if [ $? -eq 0 ]

	then

		sed "s/urlcaja/https:\/\/dl.dropboxusercontent.com\/s\/h7ds4f1qs7exuop\/precise32mod.box?dl=1&token_hash=AAFIRue1cfeM7sFJM6BmaEV7-YLRc99jENdP_qXgWJSjuQ&expiry=1400785957/g" Vagrantfile > prueba

		sed "s/rutawp/\/var\/www\/phpapp\//g" cookbooks/phpapp/attributes/default.rb > cookbooks/phpapp/attributes/prueba

	else

		sed "s/urlcaja/https:\/\/dl.dropboxusercontent.com\/s\/m7d2139oa9x6gyx\/centos32mod.box?dl=1&token_hash=AAHFtlhPg2rfcbKBsHj4bCB0dyDAytKW27TgZk49ZIV17A&expiry=1401045108/g" Vagrantfile > prueba

		sed "s/rutawp/\/var\/www\/html\/phpapp\//g" cookbooks/phpapp/attributes/default.rb > cookbooks/phpapp/attributes/prueba

fi

nombrecaja=$(zenity --display=:0 --title='Proyecto Integrado' --entry --text='¿Qué nombre quieres ponerle a la caja de Vagrant?')

	sed "s/nombrecaja/$nombrecaja/g" prueba > prueba2

puerto=$(zenity --display=:0 --title='Proyecto Integrado' --entry --text='¿Qué puerto quieres ponerle a la caja de Vagrant?')

	sed "s/puerto/$puerto/g" prueba2 > prueba3

sqlpass=$(zenity --display=:0 --title='Proyecto Integrado' --entry --text='¿Cuál quieres que sea la contraseña de MySQL?')

	sed "s/sqlpass/$sqlpass/g" prueba3 > prueba4

nombredb=$(zenity --display=:0 --title='Proyecto Integrado' --entry --text='¿Cómo quieres llamar a la base de datos?')

	sed "s/nombredb/$nombredb/g" cookbooks/phpapp/attributes/prueba > cookbooks/phpapp/attributes/prueba2

usuariodb=$(zenity --display=:0 --title='Proyecto Integrado' --entry --text='¿Cómo quieres llamar al usuario de la base de datos?')

	sed "s/usuariodb/$usuariodb/g" cookbooks/phpapp/attributes/prueba2 > cookbooks/phpapp/attributes/prueba3

zenity --display=:0 --title='Proyecto Integrado' --question --text='¿Quieres WordPress en inglés o en español?' --cancel-label='Inglés' --ok-label='Español'

if [ $? -eq 0 ]

	then

		sed "s/idiomawp/http:\/\/es.wordpress.org\/wordpress-3.9.1-es_ES.tar.gz/g" cookbooks/phpapp/recipes/default.rb > cookbooks/phpapp/recipes/prueba

	else

		sed "s/idiomawp/https:\/\/wordpress.org\/latest.tar.gz/g" cookbooks/phpapp/recipes/default.rb > cookbooks/phpapp/recipes/prueba

fi

zenity --display=:0 --title='Proyecto Integrado' --question --text='¿Estás seguro?'

if [ $? -eq 1 ]

	then

		scriptvagrant

	else

		mv prueba4 Vagrantfile

		rm prueba*

		mv cookbooks/phpapp/attributes/prueba3 cookbooks/phpapp/attributes/default.rb

		rm cookbooks/phpapp/attributes/prueba*

		mv cookbooks/phpapp/recipes/prueba cookbooks/phpapp/recipes/default.rb

		exit 0

fi

}

scriptvagrant
