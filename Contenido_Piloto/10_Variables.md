
Las variables son importantes en matemáticas y programación. Antes de ver cada uno de los data types tenemos que entender qué es una variable.

Tomemos una ecuación: 2 + 2 = 4

Qué pasa si te digo 2 + x = 4? ¿Cuánto vale x? Con tan sólo ver la ecuación anterior, sabemos que x vale 2.

Ahora, si te digo que x + y = 5? Ni x ni y tienen valores asignados. Si le asignamos a x el valor 1 tenemos que nuestra ecuación se ve:
1 + y = 5. Aquí y valdría 4, porque 1 + 4 = 5.

Si variamos el valor de x a 3, cuánto vale y? Nuestra ecuación sería 3 + y = 5. Ahora y valdría 2 porque 3 + 2 = 5.

En una ecuación como x + y = 5, tenemos que x es una variable (independiente) porque podemos asignarle un valor arbitrario y dependiendo de ese valor y tomará otro (a y se le llama variable dependiente porque depende del valor que le demos primero a x).

Si no te queda muy claro pensemos en otro ejemplo:

Conforme creces vas cambiando de estatura, cada año que pasa creces un poco. A los doce años supongamos que mides 1.50 metros, y a los trece mides 1.55 metros, y los catorce 1.60, y año con año vas cambiando. Supongamos que hoy escribes en un papelito tu estatura.

Mi estatura a los doce años es igual a 1 metro con 50 centímetros. Esto podemos ponerlo como:
Mi estatura a los doce años = 1 metro con 50 centímetros.
Podemos quitar todo el palabrerío de "Mi estatura..." y reemplazarlo con una simple letra, podemos decir:
x = 1 metro con 50 centímetros.

Pasa un año y a los trece mides 1.55 metros. Entonces x cambia de valor, pasó de 1 metro con 50 centímetros y ahora vale 1 metro con 55 centímetros.

x = 1 metro con 55 centímetros.

Mi estatura a los ( x ) años - Metros

12 - 1.50
13 - 1.55
14 - 1.60

El valor de x va cambiando. Casi todas las cosas que vemos cambian con el tiempo y esto nos es importante en programación, el valor de las cosas pueden ir cambiando entonces usaremos variables para guardar el valor de las cosas.

------------------------

Variables en Ruby.

Cuando introducimos el String "Hola Matz" en irb, al dar enter el valor se pierde, no tenemos forma de volver a consultarlo o verlo. Qué pasa si queremos usar un string u otro data type varias veces? Para esto podemos usar variables. Una variable igual que las que vimos antes nos permite ligar un nombre (nombre de la variable) a un valor de un data type y poder cambiar el valor a lo largo del programa.

Imaginemos que tenemos una aplicación en la que cada cierto tiempo, digamos cada mes, registramos nuestra edad y nuestra estatura. Igual que lo hicimos en el ejemplo de arriba. La aplicación tiene que guardar de alguna forma los valores de nuestra edad y estatura, aparte esos valores cambian con el tiempo. Esto lo puede hacer con una variable.

Podemos usar de nuevo el ejemplo de x, sólo que ahora x es un tipo de dato, o sea x debe ser un String, o un Array, o un Integer, o un Hash. Cómo sabe Ruby qué tipo de dato es cada variable. Es muy fácil.

Vamos a declarar la variable x como un entero. 3 es un entero y queremos que x sea igual a 3. Cómo le decimos esto a Ruby? Muy fácil. Vayamos a línea de comandos y entremos a irb, recuerda que simplemente debes teclear irb y enter. Ahora introduce:

```ruby
x = 3.
````
x es una variable que vale 3. Para ver cuánto vale x tecleamos simplemente x.

x
Y Ruby nos dice:
=> 3

Como x es variable podemos decirle que cambie de valor y ahora valga 1.

x = 1
Si tecleamos x, Ruby nos regresa:
=> 1

Ruby identifica que 1 es un entero, y le podemos preguntar a Ruby qué tipo de dato (o data type) es x diciéndole:

```ruby
x.class
```
Ruby nos contesta que es un Integer:
=> Integer 

Ahora, en una variable podemos guardar cualquier tipo de dato. Podemos definir x como un String, por ejemplo:

```ruby
x = "hola"
=> "hola"
```
Ruby sabe que estamos declarando una variable tipo String porque pusimos entre comillas el contenido. 

Declaremos una variable tipo Array. Una variable tipo array se declara dentro de corchetes []. Estos corchetes pueden contener elementos separados por una coma. Cada elemento puede representar un data type cualquiera. 

```ruby
x = ["hola", 3500, "Javier", 10]
```

Ahora declaremos un hash. Un hash dijimos se compone de dos partes, un Key y un Value. El Key implica un Value. El key puede ser cualquier tipo de dato y el value puede ser cualquier tipo de dato. Cada par Kay-Value debe estar separado con una coma. Ejemplo:

```ruby
x = { 1 => "Enero", 2 => "Febrero", 3 => "Marzo", 4 => "Abril", 5 => "Mayo",
6 => "Junio", 7 => "Julio", 8 => "Agosto", 9 => "Septiembre", 10 => "Octubre", 11 =>"Noviembre", 12 => "Diciembre" }
```

Por último definamos una variable de tipo booleano:

```ruby
x = true
```

Aquí le decimos a Ruby que el valor de x será cierto.

```ruby
x = false
```

Aquí le decimos a Ruby que el valor de x será falso.


