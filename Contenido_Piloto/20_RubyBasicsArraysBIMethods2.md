Título: 

###Métodos para Arrays 2

Vimos los métodos básicos para acceder a un elemento del array por su posición, y modificar el contenido de un array de la misma manera por su posición. Ahora sigamos con métodos predefinidos de Ruby para jugar con arrays.

Cuando vimos métodos de strings lo hicimos a través de ejemplos desordenados. Podemos dividir los métodos en las siguientes categorías:

- Métodos para obtener información sobre el array
- Métodos para modificar el array
- Métodos para comparar arrays
- Métodos para iterar sobre cada uno de los elementos de el array


#-Información sobre un array

Length
Es la misma sintaxis que para string.
Definamos el array lista_de_amigos y como elementos pongamos strings con los nombres de personas.

```ruby
2.4.0 :029 > lista_de_amigos = ["César", "Alejandro", "Isabel", "Álvaro", "Óliver"]
 => ["Isabel", "César", "Alejandro", "Álvaro", "Óliver"] 
```

Son cinco amigos. Para verificar usemos el método length:

```ruby
2.4.0 :030 > lista_de_amigos.length
 => 5 
```


Index
Podemos preguntarle a Ruby en qué posición se encuentra un amigo:

```ruby
2.4.0 :003 > lista_de_amigos.index("Isabel")
 => 0
```

Si preguntamos por algo que no existe en nuestro array, Ruby nos regresará nil.

```ruby
2.4.0 :004 > lista_de_amigos.index("Juan Nepomuceno Estanislao de la Rivera")
 => nil 
```

Values at
Podemos preguntarle qué elementos existen en varias posiciones, hemos buscado un sólo elemento con [0], pero con values_at podemos buscar varios valores.

```ruby
2.4.0 :006 > lista_de_amigos.values_at(1, 3)
 => ["César", "Álvaro"] 
```

Podemos preguntarle por muchas posiciones, en caso de que no existan nos regresara, adivinemos: nil.

```ruby
2.4.0 :008 > lista_de_amigos.values_at(1, 3, 10, 15, 234)
 => ["César", "Álvaro", nil, nil, nil] 
```

Include?
Algo importante cuando trabajamos con arrays es buscar un elemento, o sea saber si está incluido en la lista. Para esto usamos el método include. El método necesita que le pasemos un parámetro para que busque dentro del array y nos diga si el elemento está en la lista o no. Nos regresará verdadero o falso.

```ruby
2.4.0 :009 > lista_de_amigos.include?("Álvaro")
 => true 
2.4.0 :
010 > lista_de_amigos.include?("Damián")
 => false 
```
Empty
Parece trivial pero muchas veces nos interesa saber si un array está vacío o no. En programas grandes puede que haya variables cambiando todo el tiempo y queremos saber si el array contiene algo o no. Este método nos regresará false si el array contiene por lo menos un elemento, y true si el elemento está vacío.

```ruby
2.4.0 :011 > lista_de_amigos.empty?
 => false
```

Si definimos un array vacío, veamos:

```ruby
2.4.0 :012 > array_vacio = []
 => [] 
```

```ruby
2.4.0 :013 > array_vacio.empty?
 => true
```


Uniq!
Muchas veces queremos eliminar duplicados de un array. Para esto usamos el método uniq!. Declaremos array_repetidos como:

```ruby
2.4.0 :014 > array_repetidos = [1,2,3,4,3,3,2,6,8,7,5,2,4,9,3]
 => [1, 2, 3, 4, 3, 3, 2, 6, 8, 7, 5, 2, 4, 9, 3] 
```

Primero veamos cuántos elementos tiene nuestro array, ¿recuerdas con qué método?

```ruby
2.4.0 :015 > array_repetidos.length
 => 15 
```

Hay 15 elementos en el array, de la posición 0 a la 14. Dentro del array tenemos muchos números repetidos, vamos a quitar los repetidos.

```ruby
2.4.0 :020 > array_repetidos.uniq!
 => [1, 2, 3, 4, 6, 8, 7, 5, 9]
```

Como usamos signo de exclamación, o sea un método destructivo, nuestra variable ahora es:

```ruby
2.4.0 :021 > array_repetidos
 => [1, 2, 3, 4, 6, 8, 7, 5, 9] 
```


#-Comparar arrays
En otra categoría importante tenemos el comparar arrays. 


&
Vamos a comparar dos arrays y obtener los elementos que se encuentran en ambos.
Declaremos array_1 y array_2.

```ruby
2.4.0 :001 > array_1 = [ 1, 1, 3, 5 ]
 => [1, 1, 3, 5] 
2.4.0 : 002 > array_2 = [ 1, 2, 3 ]
 => [1, 2, 3] 
```
Los arrays tienen elementos en común, el 1 y el 3. Con el método & podemos obtener un array con sólo esos dos elementos.

El método compara los arrays y nos dice que tienen dos elementos en común y nos regresa un array con esos elementos en común.

```ruby
2.4.0 :003 > array_1 & array_2
 => [1, 3] 
```

Podemos usar la función & con muchos arrays. Declaremos un tercer array, llamémosle array_3.

```ruby
2.4.0 :004 > array_3 = [3, 6, 7]
 => [3, 6, 7] 
```

Usando la función & tenemos que el elemento 3 es el único que tienen en común los tres arrays.

```ruby
2.4.0 :005 > array_1 & array_2 & array_3
 => [3] 
```

Esta función es la intersección de conjuntos. Si no has llevado teoría de conjuntos todavía te recomendamos:

*TODO INCLUIR video

Equal
También queremos saber si dos arrays son iguales o no. A veces tendremos arrays que están cambiando su contenido y queremos saber si son iguales. Para esto usaremos el método eql?

Declaremos dos arrays, array_3 y array_4. Son arrays distintos

```ruby
2.4.0 :008 >  array_3 = [3, 6, 7]
 => [3, 6, 7]
2.4.0 :
009 > array_4 = [2, 6, 8, 25]
 => [2, 6, 8, 25]
```

Ahora preguntemos a Ruby si esos arrays son iguales?  

```ruby
2.4.0 :010 > array_3.eql?(array_4)
 => false 
```

Preguntemos a Ruby si  array_3 es igual a [3, 6, 7]

```ruby
2.4.0 :010 > array_3.eql?([3, 6, 7])
 => true
```

Desde luego que son iguales.
