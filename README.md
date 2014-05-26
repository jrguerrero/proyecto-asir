# Proyecto ASIR

Bienvenidos a mi repositorio de github para el proyecto de ASIR.

Estas recetas están creadas con Chef para aprovisionar las cajas de Vagrant y sirven tanto en CentOS como en Ubuntu, por lo que puedes elegir cualquiera de las dos distribuciones :D

# Instrucciones

Lo primero que se debe de ejecutar es el fichero script.sh

```
$ sh script.sh
```

Este es un fichero realizado en Shell Script en el que se te realizarán varias preguntas como por ejemplo el nombre que quieres darle a la caja de Vagrant, que puerto quieres abrir, etc.

Una vez terminado el Script lo siguiente es iniciar ya la caja.

```
$ vagrant up
```

Con este comando se iniciará la caja y se realizará el aprovisonamiento de la caja automáticamente.

En el caso de que no se realice, puedes lanzar el aprovisionamiento tú mismo.

```
$ vagrant provision

```

Mientras se baja la caja y se realiza el aprovisionamiento puedes aprovechar para tomarte una cervecita ya que tarda unos minutos. (Aproximadamente 5-6 minutos, según la conexión de Internet que tengas)

Muchas gracias por utilizar mi repositorio. ;)
