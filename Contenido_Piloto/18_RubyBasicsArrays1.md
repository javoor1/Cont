#Arrays Basics

¿Cómo se ve un Array?

Antes que nada, un array, arreglo, o colección se ve así:

```ruby
arreglo = ["elemento en posición 0", "elemento en posición 1", "elemento en posición 2"]
```


Otro ejemplo: 
```ruby
arreglo_varios_data_types =  [1, "dos", 3.0, [4], {"cinco" => 5}]
```


###¿Qué es un array? 
La documentación oficial de Ruby define un array cómo: "Arrays are ordered, integer-indexed collections of any object." En español: Los arrays son colecciones, de cualquier tipo de datos, ordenadas e indexadas. Podemos pensar en un array como una lista.

Un array se define entre corchetes, un array vacío por ejemplo sería:

```ruby 
array_vacío = []
```



Ahora, ¿qué es una colección? Son muchos elementos, cada elemento está separado por una coma ",", y cada elemento se encuentra dentro de una posición. La coma es lo que separa al elemento para diferenciar la posición.

En este ejemplo tenemos 3 elementos. Cada elemento tiene una posición empezando desde la posición 0: [0, 1, 2]

*TODO INCLUIR foto de pragmatic programming Figure 4.1. How arrays are indexed

```ruby
arreglo = ["elemento en posición 0", "elemento en posición 1", "elemento en posición 2"]
```

Todos los elementos son strings, pero en realidad no hay ningún tipo de restricción para el data type que deseemos usar, podemos tener hashes, strings, integers o incluso un array dentro de un array, veamos:

```ruby
arreglo_varios_data_types =  [1, "dos", 3.0, [4], {"cinco" => 5}]
```

__Lo más importante para entender un array es recordar que está compuesto de posiciones.__


arreglo_varios_data_types en la posición 0 es igual al elemento 1 que es un data type Integer, en la posición 1 es "dos" que es un string, en la posición 2 es 3.0 que es un float, en la posición 3 es [4] que es un array y a su vez tiene posiciones, bueno, sólo una posición, la 0, y por último en la posición 4 tenemos {"cinco" => 5} que es un hash, a su vez compuesto por el key "cinco" que es un string y el value 5 que es un integer.

Acceder a un Array.

Un array está compuesto de posiciones. Ruby nos permite saber qué hay en cada posición del array igual que con los strings donde podíamos acceder a la posición del string. 

```ruby
arreglo_varios_data_types =  [1, "dos", 3.0, [4], {"cinco" => 5}]
```

Sólo indicamos entre corchetes la posición que buscamos.
```ruby
arreglo_varios_data_types[0] = 1
arreglo_varios_data_types[1] = "dos"
arreglo_varios_data_types[2] = 3.0
```

Vayamos a irb y hagamos pruebas:


Declara la variable de arriba: 

```ruby
2.4.0 :001 > arreglo_varios_data_types =  [1, "dos", 3.0, [4], {"cinco" => 5}]
 => [1, "dos", 3.0, [4], {"cinco"=>5}] 

2.4.0 :004 > arreglo_varios_data_types[0]
 => 1 
2.4.0 :005 > arreglo_varios_data_types[1]
 => "dos" 
2.4.0 :006 > arreglo_varios_data_types[2]
 => 3.0 
2.4.0 :007 > arreglo_varios_data_types[3]
 => [4] 
2.4.0 :008 > arreglo_varios_data_types[4]
 => {"cinco"=>5} 

si le preguntamos a Ruby qué hay en la posición 5, nos dirá que nada porque no hay nada.
2.4.0 :009 > arreglo_varios_data_types[5]
 => nil 

Ahora, vamos a ver el caso particular de la posición 3:
2.4.0 :007 > arreglo_varios_data_types[3]
 => [4] 

Aquí tenemos que Ruby nos regresa otro array que a su vez contiene un Integer. Este array también tiene una posición a la que podemos acceder. 

Primero veamos el data type de arreglo_varios_data_types en la posición 3:
2.4.0 :012 > arreglo_varios_data_types[3].class
 => Array 

Ahora accedamos a ese segundo array, sólo tiene una posición. Para esto simplemente ocupamos:

2.4.0 :013 > arreglo_varios_data_types[3][0]
 => 4 

Ahora vemos que el valor que regresa es el Integer 4:
2.4.0 :014 > arreglo_varios_data_types[3][0].class
 => Integer 
```


