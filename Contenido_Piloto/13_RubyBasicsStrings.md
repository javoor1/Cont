Título: Ruby Basics - Strings

¿Qué es un String?

Como vimos un string es un data type para representar texto en formato humano, como el que ocupamos para leer y escribir.

De manera sencilla un string es una secuencia de caracteres (letras, símbolos (apóstrofes, signos de interrogación y exlamación, etc), números, etc.)

Los strings pueden ser cadenas largas de texto:

```ruby
"Hola, este tutorial está diseñado para que aprendas a programar en Ruby"
"La pizza es el platillo número 1"
"dfgñ2345ñadgñasdfnxcp--q-wer-+çqwer'·$%&?!"
```

Este te podrá parecer raro porque parece un Integer, un número, pero es un string:
"123456"

En el ejemplo anterior tenemos números. Por qué? Bueno, muchas veces queremos expresar cosas que tienen números por ejemplo una dirección: "Calle 20 de Noviembre #287, código postal 62550". Este string contiene números pero no estamos tratando de declarar un número tal cual.

Prosigamos con Strings.

Métodos básicos de Strings.
Cada data type representa algo distinto, los Strings son cadenas de caracteres, los Integers números, los arrays elementos ordenados, los hashes elementos no ordenados en formato Key-Value, los symbols espacios de memoria inmutables. Para poder trabajar y hacer cosas con cada data type usamos métodos. Por eso es importante tener en cuenta SIEMPRE: 

                   __"¿Con qué data type estoy trabajando?"__ 

Por ejemplo, podemos dividir dos números: 10/5, y nos dará como resultado 2. Pero no podemos dividir dos palabras: "HOLA"/"Adiós", no tiene sentido. Entonces dependiendo del data type que usemos podremos usar SÓLO ciertos métodos. Recuerda siempre esto. 

Hay métodos básicos que sirven para ordenar strings, separar strings, convertir un string a mayúsculas, o a minúsculas, etc. Veamos algunos:

Siempre que tengas dudas, ve a la documentación oficial de ruby, aquí tienes el link para la documentación básica sobre strings:

https://ruby-doc.org/core-2.2.0/String.html


Abre línea de comandos, entra a irb y sigue estos ejemplos.

Saber el tamaño de un string. 
Length/Size.
Un método importante es length y nos sive para saber el número de caracteres en un string.

Vamos a usar el string "César" para ocupar los métodos.

declaramos la variable nombre = "César"

ahora mandamos llamar el método length de la siguiente forma:

nombre.length

Ruby nos dice que el nombre tiene 5 letras.

Ahora accedamos a los caracteres individuales del string.

La primera letra de César es la C.

El index, o índice, por convención empieza en 0 en vez de 1.

```ruby
[2.4.0 :001 > nombre = "César"
 => "César" 
2.4.0 :002 > nombre[0]
 => "C" 
2.4.0 :003 > nombre[1]
 => "é" 
2.4.0 :004 > nombre[2]
 => "s" 
2.4.0 :005 > nombre[3]
 => "a" 
2.4.0 :006 > nombre[4]
 => "r"
```
De manera literal preguntamos, cuál es el caracter en la posición 0 de la variable nombre, Ruby nos dice que es la C.
nombre[0] = C

```ruby
2.4.0 :012 > nombre[0]
 => "c" 
```

Concatenar strings.Ahora formemos oraciones:
Le diremos que a la variable nombre le agregue caracteres.
El segundo nombre de César es Iván. Agregaremos los caracterés "Iván"

```ruby
2.4.0 :019 > nombre << " Iván"
 => "César Iván" 
2.4.0 :020 > nombre
 => "César Iván" 
```

Vemos como el valor de nombre cambió de "César" a "César Iván"

Ahora hagamos lo siguiente, en una nueva variable llamada apellido guardemos el valor "García Diaz"

apellido = "García Diaz"

```ruby
[2.4.0 :021 > apellido = "García Diaz"
 => "García Diaz" ]
```

Ahora tenemos dos variables, nombre y apellido. Podemos concatenarlas, porque el data type es de ambas es un string.

```ruby
[2.4.0 :022 > nombre << apellido
 => "César IvánGarcía Diaz" 
```

Existen otros métodos para concatenar que logran el mismo resultado. Usemos concat. concat recibe un PARÁMETRO, o sea al llamar el método se requiere introducir un valor, ese valor debe ser un data type tipo string, en nuestro caso será la variable apellido.

```ruby
2.4.0 :007 > nombre.concat(apellido)
 => "CésarGarcía Diaz" 
```



Verificamos el valor de nombre y nos da el nuevo valor ya concatenado.

```ruby
 2.4.0 :031 > nombre
 => "César IvánGarcía Diaz"
```


Vamos a declarar la variable nombre_completo y vamos a igualar su valor al valor de nombre:

```ruby
[2.4.0 :032 > nombre_completo = nombre
 => "César IvánGarcía Diaz" 
```


Verificamos el valor de nombre_completo:

```ruby
2.4.0 :033 > nombre_completo
 => "César IvánGarcía Diaz"
```
Hay un problema, IvánGarcía está junto, pero podemos agregar un espacio en blanco entre las dos letras. Vamos a corregir esto usando el método .insert.

el método insert funciona diciéndole en qué posición del string, queremos meter un nuevo caracter, y qué caracter va a ser. En nuestro caso queremos la posición 10 después de la n y queremos agregar un espacio en blanco, que es un caracter, o sea " ".

```ruby
[2.4.0 :046 > nombre.insert(10, " ")
 => "César Iván García Diaz" 

2.4.0 :047 > 2.4.0 :047 > nombre
 => "César Iván García Diaz" 
```
