Empezar a hablar en Ruby.

Pensemos en el lenguaje español. Lo hablamos todos los días. Sabes que existen partes del español como el vocabulario, que son las palabras que usamos; la gramática, que define las reglas de cómo deben usarse esas palabras.

http://users.jyu.fi/~torremor/cursos/gramatica/001.html

![Alt](https://i.ebayimg.com/images/g/dMQAAOSwls5Y76gh/s-l300.jpg?style=centerme)


En el español tenemos que usar muchas reglas para poder entendernos bien. Tenemos que conjugar bien los verbos y si queremos explicar algo que está pasando en este mismo momento lo conjugamos en presente, si queremos expresar algo que ya pasó lo conjugamos en pasado, y si queremos decir algo que pasará ocupamos el futuro.

En el español las oraciones que formamos tienen un sujeto y un predicado. El predicado contiene un verbo. También tenemos artículos, sustantivos, adjetivos, que tienen reglas y que nos ayudan a comunicarnos y entendernos mejor.

Al igual que el español, Ruby tiene muchas reglas.

En los lenguajes de programación el vocabulario es más reducido que en el español, sin embargo es muy potente y nos permite comunicar muchas cosas con la computadora, por ejemplo piensa en todo lo que los programadorres le dijeron a la computadora para programar tu videojuego favorito o google maps. En Ruby los conceptos básicos con los que jugaremos son los DATA TYPES o tipos de datos. Estos serán nuestro vocabulario básico. 


![Alt](https://hype.codes/sites/default/files/icons_for_articles/blue/ruby_on_rails.png?style=centerme)

Los data types básicos en Ruby y que más ocuparemos son los siguientes:

Boolean
El tipo de dato booleano es aquel que solamente puede tomar dos posibles valores. En Ruby estos dos valores son representados por true y false (verdadero y falso).

50 es mayor a 100 es falso, y Ruby lo sabe.

```ruby
50 > 100 
=> false
```
50 es menor a 100 es verdadero.

```ruby
50 < 100 
=> true
```
100 es igual a 100, obvio, no?

```ruby
100 == 100
=> true
```


Numbers - Con este data type representamos números. 

```ruby
1
2
3
5.271395
1000000
```

Strings - Así representamos palabras. Van entre comillas: 

```ruby
"Soy un string"
"Hola"
```

Arrays - Son colecciones o grupos de objetos van entre corchetes [] y pueden contener cualquier data type por ejemplo

```ruby
["hola", 3, true]
```

Hashes - Se les llama también diccionarios. Son parecidos a los arrays pero se conforman de Keys y Values, cada Key tiene un Value.

```ruby
coche_deportivo = { "nombre" => "Ferrari", "Motor" => "V12", "Velocidad Máxima" => 320 }
``

Symbols - Es una forma de diferenciar un objeto en la memoria. No te preocupes todavía por los symbols, se explicarán después.

Vamos a trabajar con cada data type de manera individual así que no te preocupes si no te queda claro todavía, vamos poco a poco.

