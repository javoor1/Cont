# INTRODUCCION A GIT

GIT es un Ctrl-Z con esteroides.

En realidad es un controlador de versiones. Lo que busca es que mientras estás trabajando en un proyecto (uno o varios archivos), que puedas ir salvando versiones de los avances para documentarlos y ver como ha evolucionado el proyecto. Como en una línea de tiempo puedes regresar a versiones anteriores, para deshacer los cambios como cuando usas Ctrl-Z.

En este ejercicio te explicaremos los pasos básicos de GIT.


## Objetivos Académicos

- Familiarizarse con GIT y sus comandos.
- Practicar un flujo de trabajo personal en GIT.
- Conocer Github.


## Actividades

Estas actividades realízalas en paralelo al con los ejercicios de 'Ruby Basics'. Por cada uno de los retos, crea un commit.


### Paso 1: Repositorios

Ya te explicamos que GIT guarda archivos y las versiones de los cambios. El lugar donde se guarda esto se llama [repositorio](http://es.wikipedia.org/wiki/Repositorio).

Para iniciar un repositorio de GIT en un proyecto (carpeta) utiliza el siguiente comando:
```
$ git init
```

En realidad GIT sólo es una carpeta oculta que mantienen toda esta información en archivos. Fíjate como git init creó la carpeta `.git`.


### Paso 2: Comandos básicos

GIT categoriza los cambios de tus archivos en 3 tipos de status:
- Los cambios que sólo están en tu computadora.
- Los cambios del área de staging (preparación).
- Los cambios commiteados (permanentes).

Trabajaremos con 5 comandos básicos:
- git status
- git add
- git commit
- git diff
- git log


#### Git status

Este comando muestra cuales archivos tienen cambios y en qué status se encuentran.

Ejemplo:
```
$ git status
On branch master

Changes to be committed:
 (use "git reset HEAD <file>..." to unstage)

    modified:   app/views/static_pages/faq2.html.erb

Changes not staged for commit:
 (use "git add <file>..." to update what will be committed)
 (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   app/views/contacts/index.html.erb
```

#### Git add

Para pasar los cambios de tu computadora al área de staging (preparación) se utiliza el comando `git add`.
El cual recibe como argumentos los archivos que quieres agregar al área de staging. Si le pasas como argumento `.`, agrega en general todos los archivos.

Ejemplos:
```
$ git add archivo1.rb
$ git add archivo2.rb archivo3.rb ... archivoN.rb
$ git add folder1
$ git add .
```

#### Git commit

Una vez que ya están preparados los cambios (en status de staging) `git commit` los hace permanentes y son integrados al repositorio.

Ejemplo:
```
$ git commit -m "Título del commit"
```

El título del commit debería explicar, qué cambios estás agregando al repositorio.

Cada commit será una versión de tu proyecto y podrás navegar entre ellos. Por ello entre más frecuente hagas commit tendrás un rango más amplio de versiones.

> Commit early, commit often.


#### Git diff

Su funcionalidad por default es mostrar las diferencias entre el último commit y los cambios que tienes en tu computadora. Pasándole diferentes argumentos lo puedes utilizar para otros tipos de comparaciones.

Ejemplo:
```
$ git diff
diff --git a/app/views/contacts/index.html.erb b/app/views/contacts/index.html.erb
index 6816b6f..fc13b05 100644
--- a/app/views/contacts/index.html.erb
+++ b/app/views/contacts/index.html.erb
@@ -9,7 +9,7 @@
<section class="contact-section section section-on-bg">
    <div class="container">

-        <p>Numero de Contactos: <%= @num_contactos %></p>
+        <p>Numero de Interesados: <%= @num_contactos %></p>

        <div class="table-responsive">
         <table class="table table-striped tablesorter">
```


#### Git log

Regresa un registro de los commits que has realizado.

Ejemplo:
```
$ git log
commit a132a61f7330e690779bd773aa453d56d8e6c770
Author: Juan Perez <juan@gmail.com>
Date:   Wed Apr 1 17:05:04 2015 -0600

   Permitir eliminar Contactos

commit e08595d1884a27ce6ccbf5a8ca9da722efff891e
Author: Juan Perez <juan@gmail.com>
Date:   Wed Apr 1 16:58:35 2015 -0600

   Permitir agregar Contactos

commit 6019a446a6cc22155d4807b25205b5f5e343a89c
Author: Juan Perez <juan@gmail.com>
Date:   Wed Apr 1 16:38:30 2015 -0600

   Crear la clase Contacto
```


### Github

Hoy en día, como en muchas otras cosas, guardamos nuestra información en la nube (remotamente).

Github es un servicio que te permite guardar repositorios de GIT en la nube.

Será esencial para el desarrollo del curso ya que en esta plataforma subirás todos tus archivos y proyectos durante el curso y se convertirá en tu CV como programador, por lo cual si no cuentas con una te recomendamos a crearla ahora en la página web de [Github](https://github.com/)

Para enlazar tu repositorio local a un repositorio remoto de Github, se utiliza el comando `git remote add origin <url>`.

La `url` de Github la obtendremos al [crear un nuevo repositorio.](https://github.com/new)

Ejemplo:
```
$ git remote add origin https://github.com/juanperez/nuevo.git
```

Para subir a Github tus commits se utiliza el comando `git push`.

Ejemplo:
```
$ git push -u origin master
```

El argumento `-u` sirve para que GIT recuerde los parámetros (`origin master`) y las siguientes veces puedas utilizar simplemente el comando 'git push'.

### Pega el link a tu perfil de Github para completar el reto.
