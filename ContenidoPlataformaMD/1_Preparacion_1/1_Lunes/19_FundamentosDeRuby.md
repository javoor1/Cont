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

Existen dentro de los datos numéricos (Fixnum)  muchas categorías las más comunes son Integer y Float.

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

Un Hash es una colección de pares (clave-valor) como "empleado" => "salario".

```ruby
months = {"1" => "January", "2" => "February"}
estudiante = { "first_name" => "Carlos", "last_name" => "Marcos", "age" => 30 }
letras = {:a => 2, :b => 3, :c => 4}
frutas = {manzana: 2, coco: 4, limon: 1}
```

#### Symbol

Los símbolos en ruby son un tipo de dato especial y son algo difícil de comprender. El símbolo es similar al String, pero a nivel memoria se guarda de manera distinta. (En este momento no te preocupes por entender la diferencia entre símbolo y string lo vas a aprender más adelante en el curso).

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

Los símbolos principalmente son usados en hashes como keys:

```ruby
h = {:nickname => 'IndianGuru', :first_name => 'Rodrigo', :last_name => 'Moran'}
```
La mayoría de las veces verás a los símbolos con los ':' al final. Esto se usa solamente para ahorrar sintaxis o caracteres, al ponerlo de esta manera nos ahorramos utilizar el '=>' (hash rocket).

```ruby
h = {nickname: 'IndianGuru',  first_name: 'Rodrigo', last_name: 'Moran'}
```

## Variables y Constantes

Las variables y constantes en Ruby se consideran posiciones de memoria que guardan los datos que vamos a necesitar para el desarrollo de nuestro programa.

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

## Operadores

Son elementos que relacionan de forma diferente los valores de una o más variables y/o constantes para manipularlos. Son de tres tipos: aritméticos, relacionales y lógicos.


####Operadores aritméticos

Permiten realizar operaciones matemáticas entre variables y/o valo res.

Precedencia de operadores:

Todas las expresiones entre paréntesis se evalúan primero. Las expresiones con paréntesis anidados se evalúan de adentro hacia afuera, el paréntesis más interno se evalúa primero. Dentro de una misma expresión los operadores se evalúan en el siguiente orden (mientras más arriba está en la lista más prioridad tiene):

```ruby
----------- | --------------------------------------
**		        Exponencial
*, /, % 	    Multiplicación, división y módulo
+, - 		    Suma y resta
----------- | --------------------------------------
```

Algunos ejemplos:

```ruby
#Exponencial
7 ** 3

#Multiplicación
8 * 4

#División
5 / 3

#Módulo
5 % 3

#Suma
5 + 9

#Resta
7 - 4
```

Los operadores en una misma expresión con igual nivel de prioridad se evalúan de izquierda a derecha.

```ruby
5 * 5 / 6 = 4
#Primero se ejecuta 5 * 5 que sería 25 y después se divide por 6 y nos daría 4.
```


#### Operadores relacionales

Comparan valores entre sí, el resultado es verdadero o falso (uno o cero).


```ruby
----------- | --------------------
==	        | Equal to
!=          | Not equal to
<           | Less than
>           | Greater than
<=          | Less than or equal to
>=          | Greater than or equal to
----------- | --------------------
```

Algunos ejemplos:

```ruby
test_1 = 77 != 77
#=> false

test_2 = -4 <= -4
#=> true

test_3 = -44 < -33
#=> true

test_4 = 100 == 1000
#=> false
```

#### Operadores lógicos

Se utilizan para comparar dos expresiones y devolver un resultado booleano (verdadero o falso).

```ruby
----------- | ----------------
&&          |     AND
||          |     OR
!           |     NOT
----------- | ----------------
```

##### Operador lógico && (AND)

```Ruby
true && true    # => true
true && false   # => false
false && true   # => false
false && false  # => false
```

##### Operador lógico || (OR)

```Ruby
true || true      # => true
true || false     # => true
false || true     # => true
false || false    # => false
```

##### Operador lógico ! (NOT)

```Ruby
!true     # => false
!false    # => true
```

Algunos ejemplos:

```ruby
edad = 75
sexo = "hombre"

if edad >= 70 && sexo == "hombre"
  puts "Hombre Adulto Mayor"
end
```
```Ruby
a = 10
b = 30

puts "b es mayor que a" if a < b || b > a
```


## Comentarios en Ruby

Comentar es el proceso de marcar contenido en un programa de tal manera que sea ignorado por el intérprete de Ruby. Los comentarios pueden ocupar varias líneas o una sola línea.

#### Una sola línea

Comentarios de una sola línea son definidos con el caracter `#`.


```ruby
# Este es un ejemplo de comentario -Welcome to Ruby!
```

### Múltiples líneas

Múltiples líneas de texto o código pueden ser comentadas usando las palabras reservadas `=begin` y `=end`.


```ruby
=begin
Esta es una prueba de múltiples
líneas de código. Es sólo un
mensaje de bienvenida.
=end
```

## Uso de puts y print en Ruby

Los métodos puts y print se utilizan para imprimir valores en pantalla. Cuando utilizas la sentencia puts puedes imprimir un valor en la pantalla con un salto de línea a diferencia de print que lo imprime en la misma línea.

```ruby
puts '...you can say that again...'
puts '...you can say that again...'

#=> ...you can say that again...
#=> ...you can say that again...

print '...you can say that again...'
print '...you can say that again...'

#=> ...you can say that again......you can say that again...
```

## Interpolación en Ruby

Nos permite introducir el contenido de una variable dentro de un string.

```ruby
name = "Roberto"
puts "hola #{name} te escribo esta carta para invitarte a un evento en la noche"
```


## Estructuras de control

Ruby ofrece diferentes estructuras de control que nos permiten alterar el flujo de la ejecución del programa:

- Estructuras de control condicionales (if, else, elsif, unless y case).
- Estructuras de control iterativas (while, until loop, for, loop, each, times).


#### Estructuras de control condicionales

Nos ofrecen alterar el funcionamiento de un procedimiento según una condición.

##### Estructuras de control if, else, elsif

Las estructuras `if, else, elsif` revisan que una condición se cumpla para ejecutar una parte del código.

```Ruby
if conditional
  # do_something
elsif conditional
  # do_something
else
  # do_something
end
```

```ruby
password = "xxxxx"
if password == "xxxxx"
  puts "Password correcto"
else
  puts "Password incorrecto"
end
```

##### Estructura de control unless

La estructura de control `unless` nos sirve para verificar que la condición sea falsa.


```ruby
numero = nil
puts "El numero no existe" unless numero
```
```Ruby
numero = 3
unless numero
   puts "El numero no existe"
else
   puts "El numero es 3"
end
```

##### Estructura de control case

La estructura `case` revisa que las condiciones se cumplan para ejecutar una parte del código. Es bastante útil cuando se tienen varias opciones de condiciones.


```ruby
edad = 23
case edad
when 20..29
  puts "You are in the twenties"
when 30..39
  puts "You are in the thirties"
when 40..49
  puts "You are in the forties"
else
  puts "Out of Range"
end
```


#### Estructuras de control iterativas

Se utilizan para ejecutar el mismo bloque de código una cantidad específica de veces.

##### Estructura de control while

La estructura de control iterativa `while` se ejecuta hasta que la condición sea verdadera. Se utiliza cuando no sabes a que punto llegar y se conoce la condición.

```ruby
#En este ejemplo es importante tener en cuenta el incremento de la variable que se usa para la condición,
#de manera que no se creen loops infinitos.

contador = 0

while contador < 10
  puts "El contador es: #{contador}"
 #se utiliza para evitar loop infinito
  contador += 1
end
```

##### Estructura de control until

La estructura de control iterativa `until` se ejecuta hasta que la condición sea falsa.

```ruby
contador = 0
until contador > 10
  puts "El contador es #{contador}"
  contador += 1
end
```

##### Estructura de control for

La estructura `for` se ejecuta una vez por cada elemento. Se utiliza cuando se conoce las veces a iterar.

```ruby
#En este ejemplo i toma el valor de cada elemento del rango entre 0 y 5

for i in 0..5
  puts "El valor de i es: #{i}"
end
```

##### Estructura de control loop

La estructura `loop` necesita una condición para romper la iteración.

```ruby
i = 20
loop do
  i -= 1
  print "#{i}"
  #condición para romper el loop
  break if i <= 0
end
```

La palabra reservada `next` puede ser usada para saltar ciertos pasos en el loop.

```ruby
i = 20
loop do
  i -= 1
  #se usa next para saltar si número es impar.
  next if i % 2 == 1
  #con el uso de next se imprimen sólo números pares.
  print "#{i}"
  break if i <= 0
end
```

##### Estructura de control each

La estructura de control iterativa `each` es la más usado cuando queremos iterar sobre colecciones como un arreglo. En caso de haber pensado en una estructura `for` lo puedes hacer con una estructura `each`.


```ruby
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end
```

##### Estructura de control times

El método `times` permite que una tarea sea desarrollada un número determinado de veces.

```ruby
10.times { print "Code the Future" }
```

## Ejercicio - Suma de Valores

Define una variable y asígnale un arreglo de números. Crea una estructura de control iterativa que permita imprimir la suma de cada número del arreglo más 5.


## Métodos de String

Son métodos de ruby que sirven para manipular cadenas de caracteres. Algunos de los métodos de string más usados son:

```ruby
#[]
frutas = ["fresa", "durazno"]
p frutas[0]
#=>"fresa"

#[]=
frutas = ["fresa", "durazno"]
frutas[1] = "mango"
p frutas
#=>["fresa", "mango"]

#capitalize
x = "welcome"
p x.capitalize
#=>"Welcome"

#chr
word = "programación"
p word.chr
#=>"p"

#count
saludo = "Hola"
p saludo.count("l")
#=>1

#empty?
nada = ""
p nada.empty?
#=>true

#sub
p "hello".sub(/e/, '*')
#=>"h*llo"

#gsub
p "hello".gsub(/[e,o,l]/, '*')
#=>"h****"

#include?
lugar = "Mexico"
p lugar.include? "x"
#=>true

#index
numeros = [1, 0, 23, 45]
p numeros.index(23)
#=>2

#reverse
saludo = "Hola"
p saludo.reverse
#=>"aloH"

#split
saludo = "Hola como estas?"
p saludo.split
#=>["Hola", "como", "estas?"]

#strip
invitacion = " Vamos a Mexico "
p invitacion.strip
#=>"Vamos a Mexico"

#length
invitacion = "Vamos a Mexico"
p invitacion.length
#=>14

#upcase
first_name = "Carlos"
p first_name.upcase
#=>"CARLOS"

#downcase
first_name = "Carlos"
p first_name.downcase
#=>"carlos"
```


## Métodos destructivos

Los métodos que terminan en `!` indican que el método va a modificar el objeto que fue llamado.

```ruby
first_name = "Carlos"
first_name.upcase
p first_name
#=>"Carlos"
last_name = "Rangel"
last_name.upcase!
p last_name
#=>"RANGEL"
```


## Arrays

- Puede contener todo tipo de datos.
- Cada posición en el arreglo es un elemento que podemos leer y/o escribir.


#### Índices de un Array

Es posible acceder a los elementos de un arreglo a través de su índice. Siempre es numérico.

```ruby
array   [ 5 , 7 , 9 , 2 , 0 ]
        +---+---+---+---+---+
index     0   1   2   3   4
```

```ruby
días_semana = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes"]
p días_semana[1]
#=>"Martes"
```

Es posible modificar los elementos del arreglo usando los índices.

```ruby
letras = ["a", "b", "c", "d"]
letras[3] = "e"
p letras
#=>["a", "b", "c", "e"]
```

Es posible agregar elementos en un array usando `push` y `<<`.

```ruby
frutas = ["mango", "fresa"]
frutas.push("frambuesa")
p frutas
#=>["mango", "fresa", "frambuesa"]
frutas << "maracuya"
p frutas
#=>["mango", "fresa", "frambuesa", "maracuya"]
```


## Hashes

- Es una colección de pares clave-valor.

#### Declarando un Hash

Un hash puede ser declarado usando dos llaves `{}`. A esta forma de declarar el hash se le llama forma literal.


```ruby
nuevo_hash = {}

persona = {
   "nombre" => "Rogelio",
   "apellido" => "Prado"
  }
```

Podemos notar que se usa el rocket `=>` para asignar un valor a la clave, asimismo usamos `,` para separar los elementos de un hash.

Otra forma de declarar un hash es usando el constructor Hash.new.

```ruby
persona = Hash.new
persona[:nombre] = "Uriel"
persona[:apellido] = "Monk"
```


#### Recuperando un elemento del Hash

Se pueden recuperar valores de un hash usando el operador `[]`. Para acceder al valor del hash se usa la clave del hash entre corchetes.

```Ruby
frutas = {
  "banana" => "platano",
  "strawberry" => "fresa",
  "lime" => "limon"
}

#en vez de acceder por medio de un índice se puede acceder con la clave (key) del hash.
p frutas["lime"]
#=>"limon"
```


#### Modificando un Hash

Una vez que se ha creado un hash es posible modificarlo. Puedes agregar pares clave-valor y también modificar valores existentes.


```Ruby
#Para agregar un nuevo producto y su precio en el hash `catalogo_tienda`

catalogo_tienda["calcetines"] = 3

```

## Métodos en Ruby

Una de las principales cualidades del código es que sea reutilizable. Esto quiere decir que si ya creamos o escribimos un pedazo de código no tenemos que volver a escribirlo de nuevo.

```ruby
def method_name(parameter_1, parameter_2)
    #Código reutilizable
end
```

Cuando te das cuenta que un pedazo de código puede ser utilizado una y otra vez y simplemente hay ciertas partes de él que cambian, podemos convertir este código en un método y reutilizarlo las veces que queramos.

Por ejemplo:

```ruby
puts "hola Javier te envío esta carta para invitarte a un evento en la noche"
puts "hola Alejandro te envío esta carta para invitarte a un evento en la noche"
puts "hola Fernanda te envío esta carta para invitarte a un evento en la noche"
puts "hola Jimena te envío esta carta para invitarte a un evento en la noche"
puts "hola Lucia te envío esta carta para invitarte a un evento en la noche"
puts "hola Alejandra te envío esta carta para invitarte a un evento en la noche"

# Para evitar repetir podemos crear un método y reutilizarlo
# Esta es la forma en la que se define un método

def invitation(name)
 puts "hola #{name} te envío esta carta para invitarte a un evento en la noche"
end

# Esta es la forma en la que se manda a llamar un método
invitation("Javier")
invitation("Alejandro")
invitation("Fernanda")
invitation("Jimena")
invitation("Lucia")
invitation("Alejandra")
```

#### Definición de un método

Un bloque de instrucciones que define un método empieza por la palabra `def` y acaba por la `end`. Una vez definida la palabra reservada `def` se especifica el nombre del método `invitation` seguido de un paréntesis donde se enlistan los parámetros que necesitará éste para funcionar. En este caso `(name)`.

Los parámetros son variables que serán utilizadas por el código dentro del método para poder llevar a cabo su función. Estas variables tomarán para cada caso en específico el valor que se les asigne o mande.


```ruby
def invitation(name)
  puts "hola #{name} te envío esta carta para invitarte a un evento en la noche"
end
```

Finalmente después de definir el método podemos hacer uso de él las veces que queramos. Para mandarlo a llamar simplemente hay que escribir su nombre después entre paréntesis escribir el valor de los argumentos con los que queremos que funcione.

```ruby
invitation("Javier")
invitation("Alejandro")
```


## Return explícito e implícito de un método

Existe una instrucción de control llamada `return` que sirve para salir de un método y devolver algún valor de manera explícita.

```Ruby
def regresa_5
  return 5
end

cinco = regresa_5
puts cinco
#=>5   
```

Es importante notar que si no se usa `return` en un método, automáticamente se devuelve el resultado de la última expresión evaluada. En ruby esta característica del retorno **implícito** es la más usada. El ejemplo anterior quedaría de la siguiente forma:


```Ruby
def regresa_5
  5
end

cinco = regresa_5
puts cinco
#=>5
```

Un método tiene que regresar algo y queda de nosotros si lo imprimimos con  `puts`, `print` o simplemente `p`. Cabe recalcar que si queremos regresar un valor y lo imprimimos con `puts` o `print`, el método no lo regresará si queremos utilizarlo posteriormente.

```Ruby
#Usando puts
def regresa_5
  puts 5
end

cinco = regresa_5
#El método no regresa el valor `5` para sumarlo a 10
puts cinco + 10
#=>undefined method `+' for nil:NilClass (NoMethodError)
```

```Ruby
#Retornando el valor
def regresa_5
  5
end

cinco = regresa_5
#El método regresa el valor `5` para sumarlo a 10
puts cinco + 10
#=>15
```


##Realizando pruebas a un método

Se pueden realizar pruebas a un método para verificar que regrese el valor esperado.

Estamos hablando de una prueba cuando el valor que regresa un método es comparado con un valor esperado, esta comparación debe retornar true.

```Ruby
def suma(a, b)
  a + b
end

p suma(8, 4) == 12
p suma(4, 5) == 9

#Lo anterior significa que cuando se llama al método `suma` con dos argumentos `8` y `4`, el valor que regresa el método es `12`.

p suma(8, 4)    #El valor regresado es 12
#=>12

#Este valor es comparado `==` con el valor esperado, si son iguales entonces el resultado es `true`.

p 12 == 12
#=>true
```
