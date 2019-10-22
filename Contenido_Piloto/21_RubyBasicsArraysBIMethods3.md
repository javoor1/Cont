Título: 
###Métodos para Arrays 3

Ya vimos métodos para:
- obtener información sobre un array
- comparar arrays

Ahora trabajemos con métodos para:
- modificar un array
- iterar sobre cada uno de los elementos de un array
- ordenar un array

#-Modificar un array

Recordemos que los arrays pueden modificarse por partes, se pueden agregar nuevos elementos, borrar elementos, o modificar elementos.

Hay tres métodos para agregar elementos a un array, .concat, push, y <<.

Concat
Declaremos 

```ruby
lista_de_amigos = ["César", "Alejandro", "Isabel", "Álvaro", "Óliver"]
```


Ahora agreguemos un nuevo amigo, tenemos que usar .concat y entre los paréntesis pasarle como argumento el array. ["David"]:

```ruby
2.4.0 :014 > lista_de_amigos.concat(["David"])
 => ["César", "Alejandro", "Isabel", "Álvaro", "Óliver", "David"]
```

Tuvimos que pasar como argumento un array con un string dentro. Pero forsozamente un array. Sería más fácil poder pasar cualquier data type directamente y no forsozamente dentro de un array. Para esto podemos usar push o <<.

Podemos lograr el mismo resultado usando el método Push pero con la flexibilidad de poder mandar como argumento cualquier data type:

```ruby
2.4.0 :015 > lista_de_amigos.push("Melina")
 => ["César", "Alejandro", "Isabel", "Álvaro", "Óliver", "David", "Melina"] 
```
 
El argumento que le pasamos al método (lo que pusimos entre los paréntesis) no fue un array como (["David"]), sino un simple string ("Melina"). Y al final el resultado fue el que deseamos.

Podemos hacer justo lo mismo usando <<. Agreguemos el string "Carolina".

```ruby
2.4.0 :016 > lista_de_amigos << "Carolina"

 => ["César", "Alejandro", "Isabel", "Álvaro", "Óliver", "David", "Melina", "Carolina"] 
```

También podemos agregar otros data types como elementos a un array usando push o <<:

Declaremos array_varios_types 

```ruby
2.4.0 :019 > array_varios_types = [150, "un string"] 
 => [150, "un string"] 
```

 Agreguemos al array un hash: {"hash_key" => "hash_value"}

```ruby
2.4.0 :020 > array_varios_types << {"hash_key" => "hash_value"}
 => [150, "un string", {"hash_key"=>"hash_value"}] 

Verificamos el contenido de la variable.
2.4.0 :021 > array_varios_types
 => [150, "un string", {"hash_key"=>"hash_value"}] 
```

Insert
Con el método push y << sólo podemos agregar elementos al final del array. ¿Qué pasa si queremos agregar uno o varios elementos e distintas posiciones del array? Para eso usamos el método insert.


Delete
Ya sabemos cómo modificar arrays para agregar elementos. Ahora veamos cómo eliminar elementos.

Regresemos al ejemplo de lista_de_amigos

```ruby
lista_de_amigos = ["César", "Alejandro", "Isabel", "Álvaro", "Óliver"]
```

Por diferencias vamos a quitar a un elemento de nuestra lista de amigos. Usamos el método delete. 

```ruby
2.4.0 :003 >   lista_de_amigos.delete("Óliver")
 => "Óliver" 
```

Verificamos el contenido del a variable:

```ruby
2.4.0 :004 > lista_de_amigos
 => ["César", "Alejandro", "Isabel", "Álvaro"] 
```

Es muy probable que queramos borrar elementos por posición:

```ruby
2.4.0 :005 > lista_de_amigos.delete_at(2)
 => "Isabel" 
```

También podemos usar el método pop para borrar el último elemento del array:

```ruby
2.4.0 :006 > lista_de_amigos.pop
 => "Álvaro" 
```

Verifiquemos el contenido de la variable:

```ruby
2.4.0 :007 > lista_de_amigos
 => ["César", "Alejandro"] 
```

Clear
Es posible que necesitemos borrar todos los elementos de un array, para esto podemos usar .clear

```ruby
2.4.0 :008 > lista_de_amigos.clear
 => [] 
```

Vemos que todos los elementos se fueron y tenemos un array vacío.

```ruby
2.4.0 :009 > lista_de_amigos
 => [] 
```

#ARRAYS - STRINGS
Muchas veces necesitarás guardar el contenido de un array en un string, la forma más obvia de hacerlo es tomar cada elemento del array y guardarlo como un caracter de un string. Imaginemos que tomamos una variable string_nuevo tipo string, y le asignáramos los valores de los elementos de un array:

```ruby
string_nuevo[0] = array[0]
string_nuevo[1] = array[1]
string_nuevo[2] = array[2]
string_nuevo[3] = array[3]
```


Esto es a grandes rasgos lo que hace el método join:
Join

```ruby
2.4.0 :006 > array = [ "a", "b", "c" ]
 => ["a", "b", "c"] 
```

Aplicando el método join:

```ruby
2.4.0 :007 > array.join
 => "abc" 
```

Hay otras opciones para usar el método join, por ejemplo, si tuviéramos un array con elementos como nombres, pero queremos guardarlos en un string:

```ruby
nombres = [2.4.0 :008 > nombres = ["alan", "césar", "alex", "isa"]
 => ["alan", "césar", "alex", "isa"]
```

El método junta todos los caracteres y no tiene ningún formato:

```ruby
2.4.0 :009 > nombres.join
 => "alancésaralexisa" 
``
Si queremos separarlos podemos pasarle un argumento al método join para indicarle el formato, por ejemplo dejar un espacio en blanco entre cada elemento del array:

```ruby
2.4.0 :010 > nombres.join(" ")
 => "alan césar alex isa" 
```

Pero también podemos poner un espacio en blanco y una coma

```ruby
2.4.0 :011 > nombres.join(", ")
 => "alan, césar, alex, isa" 
```

Y básicamente podemos incluir cualquier string como argumento para darle formato.

Dijimos con anterioridad que los índices (index) o posiciones, son parte importante de la naturaleza de los strings y los arrays. Hay métodos que nos permiten realizar una acción por cada uno de los elementos de un array. Supongamos que a cada uno de nuestros amigos queremos saludarlo, tendríamos que visitar cada una de las posiciones del array, 0, 1, 2, 3... 

Definimos la variable amigos

```ruby
2.4.0 :030 > amigos
 => ["alan", "césar", "alex", "isa"] 
```

También es muy probable que tengas que poner el contenido de un string en un array. Una forma estándar de hacer esto es mediante el método split. Este método va muy de la mano con join. Declaremos de nuevo el array nombres_array:

```ruby
nombres_array = ["alan", "césar", "alex", "isa"]
 => ["alan", "césar", "alex", "isa"]
```
Ahora vamos a convertir el contenido a un string con el método join, que acabamos de ver, usando un espacio en blanco para separar los nombres y guardarlo en una nueva variable nombres_string:

```ruby
2.4.0 :024 > nombres_string = nombres_array.join(" ")
 => "alan césar alex isa" 
```
El método join nos regresa un string. Verificamos el valor de nombres_string:

```ruby
2.4.0 :025 > nombres_string
 => "alan césar alex isa" 
```
Ahora que tenemos un string usemos el método split el cuál nos regresa un array donde cada uno de sus elementos son los nombres que teníamos antes:

```ruby
2.4.0 :026 > nombres_string.split
 => ["alan", "césar", "alex", "isa"] 
```
Podemos incluso preguntar si el array que nos regresa el método .split es igual a nombres_array y veremos que es verdadero.

```ruby
2.4.0 :027 > nombres_string.split == nombres_array
 => true
```
*TODO INCLUIR ejercicio para hablar de métodos y qué regresan y no perderse semánticamente
Hagamos algo todavía más interesante.

```ruby
2.4.0 :028 > nombres_array.join(" ").split == nombres_array
 => true 
```

#- Iterar sobre cada uno de los elementos de un array

Each. Usamos el método each para iterar sobre los elementos del array. La sintaxis del método each es más complicada que las que hemos usado hasta ahora:

```ruby
2.4.0 :032 > amigos.each do |x| puts x end
alan
césar
alex
isa
 => ["alan", "césar", "alex", "isa"] 
```
Para empezar do y end determinan un "bloque", y lo que está dentro de do y end es el contenido del bloque. A grandes rasgos un bloque es una serie de instrucciones, parecido a un método. Con |x| es la forma de indicarle al método el nombre de los elementos del array, cada elemento del array se llamará x. Después le indicamos que para cada elemento lleve a cabo una acción, en este caso la acción es el método puts x para imprimir cada elemento x. El contenido del bloque (puts x) se lleva a cabo dependiendo el número de posiciones del array, o sea el número de elementos. x puede ser cualquier nombre de variable, usemos amigo para ser más precisos:

```ruby
2.4.0 :035 > amigos.each do |amigo| puts amigo end
alan
césar
alex
isa
 => ["alan", "césar", "alex", "isa"] 
```
Ahora acabemos el ejercicio, queremos saludar a cada uno de los amigos. Cómo le podemos hacer? Vamos a usar un string e interpolar el valor de amigo. Es muy sencillo, cada que tenemos que leer el valor de una variable dentro de un string tenemos que indicarlo así "Caracteres de un string #{variable_a_leer}"

```ruby
2.4.0 :036 > amigos.each do |amigo| puts "Hola #{amigo}!" end
Hola alan!
Hola césar!
Hola alex!
Hola isa!
 => ["alan", "césar", "alex", "isa"]
```
