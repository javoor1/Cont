Título:
###Métodos Iterativos

En general ruby lee el código línea por línea de arriba hacia abajo. En los métodos esto de cierta forma no se cumple. Supongamos que la llamada al método se hace en la línea 100 y el método está definido entre las líneas 50 y 60. Ruby al llegar a la línea 100 verá que hay una "llamada" a un método y regresará a la línea 50 a leer el método, al acabar de leer el método en la línea 60 regresará a la línea 100 y continuará a leer la línea 101.

El comportamiento "lineal" también se "rompe" con estructuras de control como if/else, case y métodos iterativos.

¿Qué es iterar?

La definición de diccionario es: Realizar una acción varias veces.

Vamos a utilizar el método loop para ver de primera instancia qué hace un método al iterar. Crea un archivo llamado metodos_iterativos.rb, copia y pega el siguiente código y después córrelo.

loop do
    puts "Hola infinitamente!" 
end

Como puedes ver el código corre imprimiendo Hola! sin terminar! Presiona al mismo tiempo las teclas Control y C (Control + C) para interrumpir el programa y que deje de correr.

La sintaxis del método loop es sencilla
1.- el nombre del método 
2.- El CUERPO del ciclo, generalmente un bloque *do/end* En próximas lecciones veremos lo que es un bloque a mayor profundidad.
3.- Dentro del bloque do/end el código que queremos ejecutar. En este caso un simple puts.

Imprime 1 en vez de Hola infinitamente!. Inténtalo e interrumpe el programa cuando te canses de ver lo mismo:

loop do
    puts 1 
end

No queremos iterar de manera infinita, entonces vamos a intentar contar del uno al diez. Vamos a requerir dos cosas.

- Una variable para contar en qué iteración vamos.
- Una condición para poder indicarle al ciclo cuándo acabar.

De cierta forma un ciclo es muy parecido a una condicional, con la gran diferencia de que uno itera y el otro no.

contador = 0 
loop do
    puts "contador al entrar al ciclo"
    puts contador
    if contador == 10
        puts "al entrar a esta condición break nos permite salir del ciclo"
      break
    end
    puts "contador al salir del ciclo"
    puts contador = contador + 1
    puts "*"*10
end

puts "#"*10
puts "Por fin salimos del loop"


Antes de continuar a la siguiente lección analiza el código, córrelo varias veces, agréga código, trata de entender qué está haciendo.


Manda una carita feliz :) como respuesta.

Resultado esperado:
:)




<!-- 
*PENDIENTE*
¿Para qué necesitamos iterar? Los strings, los arrays y los hashes están compuestos de elementos (strings de caracteres, arrays de elementos, y hashes de pares key/value), sin embarlo todos estos tienen, de cierta forma, un INDEX de algún tipo, esto los hace "iterables". Podemos "visitar" uno por uno sus elementos y ejecutar código para cada uno de esos elementos. Esto es muy útil. Piensa en un profesor que tiene que pasar lista a los alumnos de su clase, si representamos la lista con un array sería bueno tener una forma de acceder a cada elemento y alterar el array para guardar información del alumno, si tiene falta o si está presente en clase.

Ruby tiene ya métodos predefinidos que nos ayudarán a iterar: while, until, loop, for.

Analiza este ejemplo con el iterador `for`. Crea un archivo que se llame for.rb

Copia el código en el archivo y corre el archivo en línea de comandos.

```ruby
alumnos = ["Luisa", "Karla", "Delia", "Ramón", "José", "Miguel", "Amanda", "Ernesto", "Luis", "Sofía"]

p "el array alumnos tiene #{alumnos.length} elementos"

for contador_del_for in 0..alumnos.length 
    puts contador_del_for
    puts alumnos[contador_del_for]
end
```
El resultado te debe dar:
```ruby
"el array alumnos tiene 10 elementos"
0
Luisa
1
Karla
2
Delia
3
Ramón
4
José
5
Miguel
6
Amanda
7
Ernesto
8
Luis
9
Sofía
10
```

*¿Qué hace for? *
Analicemos de manera breve qué hace el método for.

1.- for simplemente lee el código dentro de él las veces que le indiquemos. 

En este caso el array tiene 10 elementos y en el for le indicamos que la variable i mientras se encuentre entre 0 y el tamaño del array, deberá correr el código puts alumnos[elemento]. elemento es una variable que indica el número de la "repetición" o ciclo en el que nos encontramos, empieza en cero y va aumentando 1 en 1 hasta llegar a alumnos.lenght (o sea 10) y al llegar a 10 sale deja de correr el puts y "nos deja salir del for".

* For con dos o tres puntos.
0...array.length NO INCLUYE el último
0..array.length SÍ INCLUYE el último


*TODO Incluir para While que se compone de dos partes, un contador y que el contador siempre debe de crecer.


*05.a Loops and iterators - Part 1

Para poder ejecutar una iteración se necesita tener una condición para saber cúando iterar y cuándo dejar de iterar. En cierto sentido es muy parecido al IF pero se ejecuta tantas veces hasta que la condición se cumpla o se deje de cumplir.

While loop

counter = 0

while(counter < 10) do
    puts counter
    counter += 1
end

Podemos pensar que la diferencia entre un if y un while es que el while es "un if que se repite".

***

Tener en cuenta que los iteradores y lengths funcionan distinto.

numbers = [0, 1, 2, 3, 4, 5]
index = 0

while index <= numbers.length do
    p numbers[index]
    p index += 1
end

numbers = [0, 1, 2, 3, 4, 5]
for item in numbers
 p numbers[item]
end


Un enumerator recibe un bloque.

MAPPING
A veces queremos dejar nuestro array como estaba pero cambiar otro array dependiendo de los elementos que iteramos.

Para esto podemos usar .map

En vez de crear un array vacío y llenarlo dentro del each.
numeros = [1, 2, 3, 4, 5]
cuadrados = []

numeros.each do |number|
 cuadrados << number**2
end

p cuadrados

Podemos usar .map y asignar el resultado de .map a una variable

cuadrados = numeros.map do |number|
    number**2
end

p cuadrados


*05.e Loops and iterators - Part 5

FILTERS

SI SÓLO queremos los números NONES:

numeros = [1, 2, 3, 4, 5]
new = numeros.select do |num|
    num.odd?
end


DO/END VS {}


# WHAAAAAT?! El do/end vs {} traen resultados distintos!
puts (1..30).find do |n|
    n % 7 == 0
end

puts (1..30).find { |n| 
    n % 7 == 0 
}
###

2.4.0 :008 > puts (1..30).find do |n|
2.4.0 :009 >       n % 7 == 0
2.4.0 :010?>   end
#<Enumerator:0x007fcca605cdf8>
 => nil
2.4.0 :011 >
2.4.0 :012 >   puts (1..30).find { |n|
2.4.0 :013 >       n % 7 == 0
2.4.0 :014?>   }
7
 => nil


p doubles = (1..10).map {|n| n}


# all?() public
# Passes each element of the collection to the given block. 
# The method returns true if the block never returns false or nil. 
# If the block is not given, Ruby adds an implicit block of {|obj| obj} 
# (that is all? will return true only if none of the collection members are false or nil.)

p doubles.all? {|n| 
     n.even?
}

(1..10).any? do |n|
    n % 7 == 0
    # puts n
end


***INCLUIR
Ruby’s facilities for looping repeatedly through code also allow you to incorporate conditional logic: you can loop while a given condition is true (such as a variable being equal to a given value), and you can loop until a given condition is true. 

You can also break out of a loop unconditionally, terminating the loop at a certain point, and resume execution of the program after the loop.


 -->