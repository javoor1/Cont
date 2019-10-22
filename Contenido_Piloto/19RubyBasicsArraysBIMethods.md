Título: Métodos para arrays 1

Los arrays al igual que los strings están indexados, o sea, tienen posiciones por cada elemento que los compone. Para acceder a un elemento de un array ocuparemos la misma sintaxis que para acceder al caracter de un string, sólo necesitamos indicarle la posición (index).

En el reto 14 dijimos que ciertos data types pueden cambiar su contenido, entre ellos los arrays. Recordamos que podemos acceder a una posicón del string y cambiar ese caracter por otro. Podemos hacer lo mismo con los arrays, son data types que permiten cambiar su parte de su contenido.

Al igual que los strings, los arrays también tienen muchos métodos predefinidos.


*Métodos para crear un Array.

Podemos crear un array de varias formas, ve a irb y copia lo siguientes códigos. Analiza cómo es que se crean los arrays.

Si queremos crear un array vacío podemos usar:

array = Array.new

array = %w[]

Podemos también usar .new y enviar parámetros, por ejemplo:

```ruby
2.6.0 :004 > Array.new(3)
 => [nil, nil, nil]

Array.new(3, "Hola!")
 => ["Hola!", "Hola!", "Hola!"]
```

Podemos también crear un array con elementos aleatorios. Usamos .new y le indicamos el número cuatro, que será el número de elementos del array, y aparte .new puede recibir un bloque {...} con indicaciones, dentro del bloque usamos el método rand al que le pasamos como argumento un rango del 1..9, de este rango eligirá elementos "al azar" lo cuáles serán cada elemento del array.
Si corres el método varias veces verás que los elementos son distintos.

```ruby
Array.new(4) { rand(1...9) }
 => [8, 8, 7, 6]

Array.new(4) { rand(1...9) }
 => [3, 1, 7, 2]
```


*Métodos para acceder al la info del array.

Vimos el método que nos permite acceder a una posición de un array y conocer su valor. Declaremos la variable array_ejemplo con los elementos tipo string "a", "b", "c".

```ruby
2.4.0 :016 > array_ejemplo = [ "a", "b", "c" ]
 => ["a", "b", "c"] 

Accedemos a la posición 0
2.4.0 :017 > array_ejemplo[0]
 => "a"
```

Así como un string puede modificar su contenido usando métodos como delete, push, insert, gsub!, etc, los elementos de un array tambiénn pueden ser modificados.

array_ejemplo sólo tiene 3 elementos.

```ruby
2.4.0 :022 > array_ejemplo[2]
 => "c"
```

Si vamos a la posición 3 vemos que no existe nada ahí

```ruby
2.4.0 :022 > array_ejemplo[3]
 => nil 
```
Vamos a agregar al final del array un nuevo elemento, "d". Para esto sólo tenemos que acceder al a posición y usando el signo de = asignarle un valor. 

```ruby
2.4.0 :023 > array_ejemplo[3] = "d"
 => "d" 
```
Ahora verificamos el valor de la variable y vemos que incluye un nuevo elemento tipo string: "d".

```ruby
2.4.0 :024 > array_ejemplo
 => ["a", "b", "c", "d"] 
```
Ahora cambiemos el valor de uno de los elementos ya existentes. Cambiemos el elemento "a" por "z". Vamos a la posición del elemento "a", y asignamos el nuevo valor:

```ruby
2.4.0 :026 > array_ejemplo[0] = "z"
 => "z" 
```
Verificamos la variable y vemos que "a" ya no está y ahora tenemos "z".

```ruby
2.4.0 :028 > array_ejemplo
 => ["z", "b", "c", "d"] 
```
