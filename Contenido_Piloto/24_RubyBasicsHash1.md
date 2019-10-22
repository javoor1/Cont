Título: Basics: Hashes

¿Qué es un Hash?

La definición de hash en la documentación de ruby nos dice: 
A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

Hashes enumerate their values in the order that the corresponding keys were inserted.


Vimos que los hashes tienen la siguiente forma:

{"un_key" => "su_value"}

Al igual que los arrays los hashes son colecciones indexadas de data types. Un array es un data type cuya intención es asociar un número entero (un Integer que denota una posición) a un elemento que puede ser cualquier data type. El número entero, index o posición, podemos llamarlo "Key" y el elemento que se encuentra en esa posición será el "Value". Por ejemplo:

```ruby
array = ["elemento1", "elemento2", "elemento3"]

array[0] = "elemento1"
array[1] = "elemento2"
array[2] = "elemento3"
```

Podemos hacer una pequeña analogía entre un array y un hash.
0 es el index del array, podemos pensar que este es el "key". 
Con array[0] accedemos al elemento de ese index, la posición 0, entonces "elemento1" podemos pensarlo como el "value" del KEY index 0.

El "Key" es en index 0 (o sea, el número entero 0) y el "value" el string "elemento1".

Un Hash es muy parecido pero los Keys no tienen que ser números, pueden ser cualquier data type. Esto da mayor flexibilidad que un array. Tanto los arrays como los hashes contienen elementos que pueden ser editados y eliminados, también se pueden crear nuevos pares Key-Value.

Un hash se define entre llaves { }, dentro asociamos un data type a otro data type usando un "hash rocket" o =>, por ejemplo:

```ruby
{ "Yo soy el KEY" => "Yo soy el Value" }
```
Aquí el KEY es un data type string, y el data type string "Yo soy el Value" es el Value. El valor de la izquierda siempre será el Key y el valor de la derecha siempre será el Value.

Un hash, al igual que un array, puede contener muchos elementos. Te has dado cuenta que las direcciones de internet pueden tener cierta terminación dependiendo del país? Por ejemplo .mx, o .us, o .es? 

```ruby
{ "United States" => ".us", "México" => ".mx", "Norway" => ".no", "Germany" => ".de"}
```

Sabemos que podemos guardar el valor de un data type en una variable, así que declaremos una variable dominios_paises:
dominios_paises = { "United States" => ".us", "México" => ".mx", "Norway" => ".no", "Germany" => ".de"}


Al igual que con los arrays y strings, tenemos métodos para realizar distintas acciones sobre el hash.

1.- Métodos para obtener información sobre el hash
2.- Métodos para modificar el hash
3.- Métodos para iterar sobre cada uno de los elementos de el hash


* Obtener información del hash

Para acceder a la información del hash tenemos que hacer casi lo mismo que hacemos con un array, simplemente ahora no accesaremos al value por un número sin por el key.

Entra a línea de comando, a irb y declara el hash:

```ruby
2.4.0 :102 > dominios_paises = { "United States" => ".us", "México" => ".mx", "Norway" => ".no", "Germany" => ".de"}
 => {"United States"=>".us", "México"=>".mx", "Norway"=>".no", "Germany"=>".de"} 
```

Accedamos al value de "United States"

```ruby
2.4.0 :103 > dominios_paises["United States"]
 => ".us" 
```
Podemos saber los keys de un hash con el método .keys. Este método nos regresa un array con los keys.

```ruby
2.4.0 :104 > dominios_paises.keys
 => ["United States", "México", "Norway", "Germany"] 
```
Lo mismo se puede hacer para los values:

```ruby
2.4.0 :105 > dominios_paises.values
 => [".us", ".mx", ".no", ".de"] 
```
Si queremos saber el número de pares Key-Value, podemos usar .length

```ruby
2.4.0 :109 > dominios_paises.length
 => 4 
```
Se puede usar el método empty? para saber si el hash está vacío:

```ruby
2.4.0 :106 > dominios_paises.empty?
 => false 
```
En hashes con muchos keys nos interesa saber si el hash contiene o incluye un key en particular:

```ruby
2.4.0 :107 > dominios_paises.has_key?("Norway")
 => true 
```
Lo mismo para saber si incluye un value particular:

```ruby
2.4.0 :108 > dominios_paises.has_value?(".de")
 => true 
```

* Modificar el hash

Primero veamos cómo agregar un nuevo par, declaremos el hash:

```ruby
2.4.0 :006 > capitales = {"México" => "Ciudad de México", "Chile" => "Santiago", "Ecuador" => "Quito"}
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito"} 
```

Para agregar un nuevo par usamos la misma forma que para agregar un elemento a un array, le indicamos el Key y le asignamos un Value:

```ruby
2.4.0 :007 > capitales["Uruguay"] = "Montevireo"
 => "Montevideo" 
```
Ahora tenemos un nuevo Key-Value:

```ruby
2.4.0 :008 > capitales
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevireo"} 
```
Cometimos un error y escribimos Montevireo en vez de Montevideo, vamos a cambiar el valor del value. Como :

```ruby
2.4.0 :014 > capitales["Uruguay"][7] = "d"
 => "d" 
```

Sabemos que capitales["Uruguay"] es el key del value "Montevireo". "Montevireo" es un string entonces podemos acceder a sus métodos. En este caso modificar uno de sus caracteres, queremos modificar el caracter en la posición 7, o sea capitales["Uruguay"][7], y luego asignarle el valor "d", o sea capitales["Uruguay"][7] = "d".

Verificando los pares de capitales vemos que se realizó el cambio correctamente:

```ruby
2.4.0 :015 > capitales
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo"}
```

Creemos un nuevo par para la capital de Venezuela:

```ruby
2.4.0 :017 > capitales
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venetuela"=>"Bogotá"}
```

Cometimos dos errores, primero corrijamos "Venetuela" por "Venezuela" usando el método delete.

```ruby
2.4.0 :019 > capitales["Venezuela"] = capitales.delete("Venetuela")
 => "Bogotá"
```

Verificamos el contenido del hash:

```ruby
2.4.0 :020 > capitales
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Bogotá"} 
```


El segundo error es que Bogotá no es la capital de Venezuela! Hay que cambiar por completo el valor por "Caracas", es muy fácil, asignamos un valor al key y listo.

```ruby
2.4.0 :021 > capitales["Venezuela"] = "Caracas"
 => "Caracas" 
```

Verificamos el contenido:

```ruby
2.4.0 :022 > capitales
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Caracas"} 
```

Si queremos borrar por completo un par del hash podemos usar el método delete.

```ruby
2.4.0 :023 > capitales.delete("Chile")
 => "Santiago" 
```

Verificamos el valor:

```ruby
2.4.0 :024 > capitales
 => {"México"=>"Ciudad de México", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Caracas"} 
```

Podemos también cambiar los Values por los Keys con el método .invert:

```ruby
2.4.0 :025 > capitales.invert
 => {"Ciudad de México"=>"México", "Quito"=>"Ecuador", "Montevideo"=>"Uruguay", "Caracas"=>"Venezuela"} 
```

Algo importante a considerar en un hash es, qué pasa si tenemos dos keys iguales? Bueno, es imposible tener dos keys iguales en un hash. Intentemos crear un hash con dos keys iguales:

```ruby
2.4.0 :026 > hash = {"a" => "hola", "a" => "adiós"}
(irb):26: warning: key "a" is duplicated and overwritten on line 26
 => {"a"=>"adiós"} 
```

Ruby nos manda un error porque no debemos tener un key duplicado, guarda la variable pero sólo toma en cuenta sólo el último de los keys duplicados que introdujimos.

```ruby
2.4.0 :027 > hash
 => {"a"=>"adiós"}
```

Podemos combinar dos hashes usando el método merge:
Declaramos los hashes

```ruby
2.4.0 :028 > hash_1 = {"a"=>"adiós"} 
 => {"a"=>"adiós"} 
2.4.0 :029 > hash_2 = {"b" =>"hola"}
 => {"b"=>"hola"} 
```

Usamos .merge y como argumento le damos un hash, o una variable que sea un hash:

```ruby 
2.4.0 :030 > hash_1.merge(hash_2)
 => {"a"=>"adiós", "b"=>"hola"} 
```

.merge no es un método destructivo pero cuenta con una versión destructiva:

```ruby
2.4.0 :030 > hash_1.merge!(hash_2)
 => {"a"=>"adiós", "b"=>"hola"}
```

Vimos que era posible convertir, por lo menos de cierta forma y con cierto formato, los strings a arrays y los arrays a strings. También es posible "convertir" un hash a un array usando el método .to_a, probemos con la variable hash_1 que declaramos anteriormente:

```ruby
2.4.0 :035 > hash_1.to_a
 => [["a", "adiós"], ["b", "hola"]] 
```

El resultado es un array nesteado, o sea un array que contiene arrays. Cada par key-vaue será un array dentro de ese array:

```ruby
["a", "adiós"]
["b", "hola"]
[["a", "adiós"], ["b", "hola"]] 
```

Y los arrays estarán dentro de un array. Si queremos guardar el valor del resultado del método .to_a tenemos que hacerlo en una nueva variable ya que no es un método destructivo.


* Iterar sobre cada uno de los elementos de el hash

Podemos iterar sobre los pares de un hash. Declaremos el hash capitales, después usemos el método .each y dentro un puts con interpolación para mostrar el valor del key y otro puts para mostrar el valor del value:

```ruby
2.4.0 :046 > capitales = {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Caracas"} 
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Caracas"} 

2.4.0 :051 > capitales.each do |pais, capital|
2.4.0 :052 >       puts "HOLA #{pais}" 
2.4.0 :053?>     puts "Y saludos a la gente de su capital: #{capital}"
2.4.0 :054?>   end
```

HOLA México
Y saludos a la gente de su capital: Ciudad de México
HOLA Chile
Y saludos a la gente de su capital: Santiago
HOLA Ecuador
Y saludos a la gente de su capital: Quito
HOLA Uruguay
Y saludos a la gente de su capital: Montevideo
HOLA Venezuela
Y saludos a la gente de su capital: Caracas
 => {"México"=>"Ciudad de México", "Chile"=>"Santiago", "Ecuador"=>"Quito", "Uruguay"=>"Montevideo", "Venezuela"=>"Caracas"} 

