Esta es la aplicación mas completa que habrás hecho hasta ahora. Utiliza todos los conocimientos que has aprendido. Woow cuántas cosas hemos visto !!

Iremos creciendo la aplicación en varias iteraciones siguiendo el algoritmo de divide y vencerás.

Esta aplicación tiene todos los elementos necesarios para ser diseñada utilizando el concepto de [MVC](http://c2.com/cgi/wiki?ModelViewController).

> An easy way to understand MVC: the model is the data, the view is the window on the screen, and the controller is the glue between the two.
> Connelly Barnes

Intenta seguir este patrón arquitectónico para crear tu aplicación. Recuerda los principios de [Single Responsability](http://en.wikipedia.org/wiki/Single_responsibility_principle) y [Separation of Concerns](http://en.wikipedia.org/wiki/Separation_of_concerns) mientras decides que clases y métodos crear. Observa como dependiendo de la estructura que eliges para tu programa las siguientes iteraciones pueden ser más fáciles o difíciles de incorporar.

Es importante revisar el [IO open mode] (http://ruby-doc.org/core-2.0.0/IO.html#method-c-new-label-IO+Open+Mode) para el manejo de archivos en este ejercicio.

Construirás algo similar al siguiente mock-up (no te limites):

```
$ ruby todo.rb add Terminar el tutorial de jQuery
...
$ ruby todo.rb index
...
$ ruby todo.rb add
...
$ ruby todo.rb delete <task_id>
...
$ ruby todo.rb complete <task_id>
...
```

## Objetivos Académicos

- Repasar y aplicar todos los conceptos vistos anteriormente.
- Practicar trabajo en equipo y división de tareas.
- Desarrollar una aplicación completa, vivir la experiencia y sus desafíos.


## Actividades

### Paso 1: Responsabilidades vs Ruby code

Crea una tabla como la siguiente donde iguales las responsabilidades que tendrá tu programa contra código de Ruby.

<table class="table table-striped table-condensed">
  <thead>
    <tr>
      <th>Responsabilidad</th>
      <th>Ruby code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Inicializar una lista vacía</td>
      <td>list = List.new</td>
    </tr>
    <tr>
      <td>Agregar una tarea a la lista</td>
      <td>list.add(Task.new('Comprar chicles')</td>
    </tr>
    <tr>
      <td>Parsear el archivo CSV e instancear clases de Ruby</td>
      <td>???</td>
    </tr>
  </tbody>
</table>

Enumera todas las responsabilidades que se te ocurran. Y sepáralas de acuerdo a la parte del modelo MVC que la realizaría.

Aunque al principio tengas que escribir más código para tener tu aplicación separada en MVC, al largo tendrá muchos beneficios.


### Paso 2: Crear un archivo para que persista la información

Crea un archivo CSV donde enlistes una serie de tareas. Una por cada línea.

Ejemplo:
```
Comprar manzanas rojas
Lavar la ropa
Convertirme en un Developer Rock Star
```


### Paso 3: Implementar el comando index

Al recibir el comando `index`, deberás de leer el archivo CSV del paso anterior y mostrar en la consola las tareas enumeradas.

Ejemplo:

```
$ ruby todo.rb index
1. Comprar manzanas rojas
2. Lavar la ropa
3. Convertirme en un Developer Rock Star
```


### Paso 4: Implementar el comando add

Un usuario puede agregar nuevas tareas desde la consola.

Ejemplo:

```
$ ruby todo.rb add Sacar a Fido a pasear
Agregaste la tarea: "Sacar a Fido a pasear" a tu lista.
```


### Paso 5: Implementar el comando delete

Un usuario puede borrar tareas desde la consola especificando el número de la tarea. Este número es el que se muestra con el comando `index`.


```
$ ruby todo.rb index
1. Comprar manzanas rojas
2. Lavar la ropa
3. Convertirme en un Developer Rock Star

$ ruby todo.rb delete 2
Eliminaste la tarea: "Lavar la ropa" de tu lista.

1. Comprar manzanas rojas
2. Convertirme en un Developer Rock Star
```


### Paso 6: Implementar el comando complete

Sería bueno que nuestro programa pudiera recordar las tareas que ya completamos sin tener que borrarlas.

Ejemplo:
```
$ ruby todo.rb index
1. [ ] Comprar manzanas rojas
2. [ ] Lavar la ropa
3. [ ] Convertirme en un Developer Rock Star

$ ruby todo.rb complete 2
Completaste la tarea: "Lavar la ropa".

1. [ ] Comprar manzanas rojas
2. [X] Lavar la ropa
3. [ ] Convertirme en un Developer Rock Star
```


### Paso 7: Extras

Diviértete y añade funcionalidades a tu programa para ver si Google te lo compra.
