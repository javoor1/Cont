Una funcionalidad de GIT que no hemos usado y es muy útil son los branches (ramas).

Por default GIT crea un branch en los repositorios llamado `master`. Este será el branch principal en todos tus programas.

La regla de oro al usar GIT es que tu branch `master` siempre deberá estar libre de bugs y no tener funcionalidades a medias, para que tu proyecto siempre funcione.

**¿Cómo logramos esto si queremos seguir agregando funcionalidades al proyecto?**

Una forma de solucionar este problema es trabajar las nuevas funcionalidades en su propio branch.

Al trabajar en un branch diferente de master, GIT separa los commits posteriores manteniéndolos aislados.

<center>
  <img style="width: 600px;" src="https://codealab.files.wordpress.com/2015/04/screen-shot-2015-04-01-at-7-19-44-pm.png">
</center>

Una vez terminado y funcionando el código de esta nueva funcionalidad se puede integrar a `master` utilizando el comando `git merge`.


## Objetivos Académicos

- Familiarizarse con el concepto de branch.
- Trabajar funcionalidades aisladas por medio de branches.
- Mantener un workflow limpio.


## Actividades

Paralelo a este ejercicio deberás resolver el ejercicio de la tortería o el online store. Cada paso lo deberás resolver en un nuevo branch. Recuerda *commit early, commit often*.

En este ejercicio veremos los siguientes comandos de GIT:
- git branch
- git checkout <nombre_del_branch>
- git checkout -b <nombre_del_branch>
- git merge


### Paso 1: Inicializa tu repositorio y súbelo a Github

```
$ mkdir <torteria_folder>
$ cd <torteria_folder>
# add files

$ git init
$ git add .
$ git commit -m "Agregar archivo Torteria"
$ git remote add origin https://github.com/<creator-name>/<project-name>.git
$ git push -u origin master
```

El argumento `-u` sirve para que GIT recuerde los parametros (`origin master`) y las siguientes veces puedas utilizar simplemente el comando 'git push'.

### Paso 2: Crear un branch

El comando `git branch` tiene 2 funciones:

- Crea un nuevo branch si le pasas como argumento un nombre.

Ejemplo:
```
$ git branch disenar-un-mvp
```

- Sirve para saber en que branch te encuentras trabajando y que branches has creado. El asterísco indica la branch actual.

Ejemplo:
```
$ git branch
  disenar-un-mvp
* master
```

Para poder cambiarte de un branch a otra se utiliza el comando `git checkout`, pasándole como argumento el nombre del branch.

Ejemplo:
```
$ git branch
  disenar-un-mvp
* master

$ git checkout disenar-un-mvp

$ git branch
* disenar-un-mvp
  master
```

Finalmente existe un shortcut muy utilizado que crea un branch y te cambia a él.

Ejemplo:
```
$ git branch
* master

$ git checkout -b refactor

$ git branch
* refactor
  master
```


### Paso 3: Git merge

Después de haber trabajado aisladamente en una funcionalidad nueva, deberás integrar estos cambios al branch `master`. Primero hay que pasarse a `master` y estando ahí utiliza el comando `git merge`, pasando como argumento el nombre del branch que quieres integrar.

Ejemplo:
```
$ git checkout master

$ git merge refactor
```

**Si encuentras conflictos al hacer este paso, llama a un profesor.**
