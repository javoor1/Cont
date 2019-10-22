Ruby es un lenguaje de alto nivel, interpretado, orientado a objetos y sencillo de usar.

## Ruby y Tipos de Datos

Un tipo de dato (Data Type) es un conjunto de valores que componen el lenguaje de programación Ruby. Estos son los tipos de datos más usados en Ruby:

- Strings
- Fixnum ( Integer y Float ) => Estos son datos númericos
- Booleans
- Arrays
- Hashes
- Symbols

#### String

Los strings o cadenas de texto son secuencias de caracteres. La sintaxis para definirlos es utilizando comillas simples o comillas dobles.

Cualquier caracter puede ser parte de un string, desde números '67', hasta caracteres como '!' '@' '^` etc.

```ruby
"Hola Mundo!"
'Ruby'
"hola/$!^"
"987"
```




#### Fixnum - Integer y Float
Dentro de los datos numéricos (Fixnum) existen muchas categorías, las más comunes son Integer y Float.

Los números enteros son llamados integers y los números con decimales son llamados flotantes (floats).

Algunos enteros son:

```ruby
10
-300
8888888
0
```
Y algunos ejemplos de flotantes son:

```ruby
70.324
0.0003
-345.456
0.0
```

#### Boolean

El tipo de dato booleano es aquel que solamente puede tomar dos posibles valores. En Ruby estos dos valores son representados por true y false (verdadero y falso).

```ruby
x = true
#=> true
4 > 5
#=> false
10 == 10
#=> true
y = false
#=> false
```

#### Array

Es una lista de datos ordenados numéricamente. Un arreglo puede contener strings, integers, hashes, objetos y otros arreglos.

```ruby
["Pedro", 9, true, "array"]
[3, 2, 1, 10]
[{"saludo" => "hola"}, [23, 45], "first_name", "last_name"]
```

#### Hash

Un Hash es una colección de pares (clave-valor o 'key-value') como "empleado" => "salario".

```ruby
months = {"1" => "January", "2" => "February"}
estudiante = { "first_name" => "Carlos", "last_name" => "Marcos", "age" => 30 }
letras = {:a => 2, :b => 3, :c => 4}
frutas = {manzana: 2, coco: 4, limon: 1}
```

#### Symbol

Los símbolos en ruby son un tipo de dato especial y son algo difícil de comprender. Por ahora lo único que necesitas comprender es que el símbolo es similar al String, pero a nivel memoria se guarda de manera distinta.

Principalmente utilizarás los symbols como las claves (keys) de un hash como se explica a continuación.

En este momento no te preocupes mucho por entender la diferencia entre símbolo y string, lo vas a aprender más adelante en el curso, pero si quieres el siguiente link explica algunas diferencias.

- [Difference between a string and a symbol](http://stackoverflow.com/questions/255078/whats-the-difference-between-a-string-and-a-symbol-in-ruby)

En Ruby se puede reconocer un símbolo ya que es una palabra que empieza o acaba con `:`.

```ruby
:age
light = :off
paciente = :sano
{ name: "Javier", gender: "male" }
```

También es posible convertir un string a símbolo con el método `.to_sym`.

```Ruby
c = 'cat'.to_sym
#=> :cat
p = 'dog'.to_sym
#=> :dog
```

Los símbolos usados en hashes como keys:

```ruby
h = {:nickname => 'IndianGuru', :first_name => 'Rodrigo', :last_name => 'Moran'}
```
La mayoría de las veces verás a los símbolos con los ':' al final. Esto se usa solamente para ahorrar sintaxis o caracteres, al ponerlo de esta manera nos ahorramos utilizar el '=>' (hash rocket).

```ruby
h = {nickname: 'IndianGuru',  first_name: 'Rodrigo', last_name: 'Moran'}
```

## Variables y Constantes

Las variables y constantes en Ruby son espacios de memoria reservados que guardan los valores y estos como su nombre pueden variar a lo largo de la ejecución del programa.

Explicado con una analogia:

Piensa que una variable es como una caja la cual tiene una etiqueta con su nombre y dentro de la caja puedes guardar algo (un objeto), el siguiente video explica esta analogía de manera muy sencilla.

<center>
![alt text](https://codealab.files.wordpress.com/2016/07/screen-shot-2016-07-14-at-11-37-32-am.png)
</center>

<center>
<iframe width="420" height="315" src="https://www.youtube.com/embed/aeoGGabJhAQ" frameborder="0" allowfullscreen></iframe>
</center>


### Definiendo una variable

El lenguaje Ruby reconoce cualquier palabra con las siguientes características como variables:

- Deben empezar con una letra minúscula o un guión bajo `_`.
- Deben estar formadas por letras, números y/o guiones bajos.
- Por convención se estableció que deben ser llamadas de manera tal que definan su funcionalidad, escritas en minúsculas y separadas por `_` .

```ruby
first_name = "Diego"
flag1 = false
cel_5 = 123456789
```

### Definiendo una constante

Una constante debe ser nombrada con todas las letras en mayúsculas o al menos con la primera letra en mayúscula. El valor de una constante debe permanecer sin cambios durante la ejecución de un programa, es decir no es conveniente modificarla.

```ruby
CONSTANT = 10
#=> 10
CONSTANT = 5
#=> (irb):15: warning: previous definition of CONSTANT was here
#=> 5
```

## Ejercicio - Definir Variables y Constantes

Crea 3 variables diferentes para poder almacenar la información de un post: `title` y `description` con valores tipo string y `number_of_likes` con valor tipo entero. Asimismo, crear una constante que guarde el número identificador del post.

Ahora crea 5 variables para guardar la información de una dirección: `street`, `number`, `state`, `city`, `zip` y asigna valores a cada una. Piensa cuales de estas variables deben de ser integers y cuales strings u otro tipo de dato. Un valor debe de ser numérico cuando necesitarás hacer operaciones matemáticas.  
