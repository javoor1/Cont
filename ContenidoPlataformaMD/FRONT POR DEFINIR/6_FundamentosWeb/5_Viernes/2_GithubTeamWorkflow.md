## Siempre empezar estando en la branch `Local Master`

Para poder empezar flujo de trabajo hay que estar seguros que estamos parados en master local.

El siguiente comando te dirá en que branch estas parado.
```
git branch
```

Si no estas en master tendrás que hacer checkout a master
```
git checkout master
```

## Actualiza `Local Master` bajando y juntando `Origin Master`

Para bajar `Origin Master` y hacer un merge con master corre el siguiente comando.
```
git pull origin master
```

## Antes de empezar a trabajar debes siempre crear una nueva `Feature Branch`

Para crear una nueva branch y cambiarte a ella utiliza el siguiente comando.
Deberás remplazar `<branch-name>` por el nombre que le quieras dar a tu nueva `Feature Branch`.
```
git checkout -b <branch-name>
```
Corre el siguiente comando para estar seguro que estas parado en la nueva `Feature Branch`.
```
git branch
```

## Ahora ya podrás empezar a trabajar

Recuerda que debes hacer commits de manera frecuente

```
git add .
git commit -m "<nombre del commit>"
```

### Cuando termines y estés seguro que ya acabaste (*)

Corre tu aplicación y juega con ella para ver que los cambios que hiciste funcionan correctamente.

## Muevete a `Local Master` para actualizarlo

Para moverte recuerda el siguiente comando
```
git checkout master
git branch
```

Para actualizar `Local Master` con cualquier cambio que haya tenido `Origin Master`
```
git pull origin master
```

## Regresa a tu `Feature Branch`

```
git checkout <nombre de tu feature branch>
git branch
```

## Junta `Local Master` con tu `Feature Branch`

```
git merge master
```
### En este momento pueden pasar dos cosas

#### Que al juntar se hayan generado conflictos
- Primer paso es abrir sublime en el file donde exista un conflicto y arreglarlo
- Hacer lo mismo para todos los archivos con conflictos
- Hacer un commit para agregar el código que arregla los cambios
```
git add .
git commit -m "<nombre del commit>"
```

#### Que al juntar todo haya salido bien

- Si no se generaron conflictos puedes festejar

### Subir a Github nuestra `Feature Branch`

Para subir nuestra `Feature Branch` revisa que estas parado en ella.
```
git branch
```
Ahora para subir la branch hay que correr el siguiente comando
```
git push origin <nombre de tu feature branch>
```

### Crea un pullrequest

En la página de Github de tu proyecto deberás crear un pull-request y avisar a tus compañeros que ya esta listo.


### En equipo deben revisar los cambio que genera esta `Feature Branch`

Es muy importante leer todos los cambios y estar de acuerdo para que se junten con `Origin Master`.

#### Si no estan acuerdo con los cambios y hay algún error

Si existe algún error en el código entonces deberás regresar a tu `Feature Branch` en local y arreglar dichos cambios y hacer commit de ellos.

```
git add .
git commit -m "<nombre del commit>"
```

Antes de subir deberás regresar al paso que tiene esta estrella (*) y empezar desde ahí otra vez.

### Cuando tu `Feature Branch` haya sido aprobada hay que juntarla con `Origin Master`.

Haz el merge de `Feature Branch` con `Origin Master` en Github, en este paso ya no deberían de haber conflictos.

## Finalmente en local regresa a `Local Master`

```
git checkout master
git branch
```

## Finalmente en local regresa a `Local Master`


## Actualiza `Local Master` bajando y juntando `Origin Master`

Para bajar `Origin Master` y hacer un merge con master corre el siguiente comando.
```
git pull origin master
```

## Antes de empezar a trabajar de nuevo bebes crear una nueva `Feature Branch`

En este momento ya estamos repitiendo parte del ciclo...

## Este video les servirá como ejemplo de este proceso:

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/oFYyTZwMyAg" frameborder="0" allowfullscreen></iframe></center>
