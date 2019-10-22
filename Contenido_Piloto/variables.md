Título: Qué es una Variable?.

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


Variables en Ruby.

Qué es una variable en Ruby? Una variable en Ruby es un valor que puede cambiar a lo largo del programa. Podemos de nuevo usar el ejemplo de x, sólo que ahora x es un tipo de dato, o sea x debe ser un String, o un Array, o un Integer, o un Hash. Cómo sabe Ruby qué tipo de dato es cada variable. Es muy fácil.

Vamos a declarar la variable x como un entero. 3 es un entero y queremos que x sea igual a 3. Cómo le decimos esto a Ruby? Muy fácil. Vayamos a línea de comandos y entremos a irb, recuerda que simplemente debes teclear irb y enter. Ahora introduce:

x = 3.

x es una variable que vale 3. Para ver cuánto vale x tecleamos simplemente x.

x
Y Ruby nos dice:
=> 3

Como x es variable podemos decirle que cambie de valor y ahora valga 1.

x = 1
Si tecleamos x, Ruby nos regresa:
=> 1






