Título: Empezando a hacer cosas en Ruby.

Hasta el momento sólo sabemos que para hablar en Ruby tenemos que usar un vocabulario con data types tipo String, Integer, Hash, Array, y Symbol. Sabemos que podemos asignar valores a esos data types y guardarlos en una variable. Sabemos que esta variable puede ir cambiando su valor.

Para poder trabajar con Ruby, o sea, para poder decir cosas más interesantes, vamos a ocupar métodos (*TODO INCLUIR link*) y operadores (*TODO INCLUIR link*).

En uno de nuestros primeros ejemplos usamos el método puts para imprimir un string, recuerdas? Usamos:

puts "Hola Matz"

Puts es un método que nos permite mostrar los strings en formato legible en la pantalla, a esto le llamamos "imprimir" en pantalla. Los strings están pensados para comunicarnos con palabras como lo hacemos las personas. El método puts nos permite mostrar los strings para leerlos fácilmente. Veamos:

Si introduces:
"Hola Matz"

Sólo estarás declarando un String con el valor "Hola Matz", Ruby nos mostrará en la pantalla:

```ruby
<br>2.4.0 :010 >   "Hola Matz"
 => "Hola Matz" 
```

Qué pasa si imprimimos "Hola Matz" usando puts?
```ruby
<br>2.4.0 :011 > puts "Hola Matz"
Hola Matz
 => nil 
```

Ahora la pantalla muestra Hola Matz, sin comillas, como si fuéramos a leerlo en un libro. No te preocupes por el significado de nil todavía, ya lo veremos.

Vamos a practicar guardando el valor del String en una variable.

1.- Primero declaramos la variable saludar con el valor "Hola Matz"
```ruby
<br>2.4.0 :014 > saludar = "Hola Matz"
 => "Hola Matz" 
```
2.- Tecleamos saludar para verificar qué valor nos regresa. Nos regresa: => "Hola Matz"
```ruby
<br>2.4.0 :015 > saludar
 => "Hola Matz" 
```

3.- Imprimimos en pantalla usando puts y la variable saludar.
```ruby
<br>2.4.0 :016 > puts saludar
Hola Matz
 => nil
```
Puts es un método para mostrar en pantalla, o imprimir, que puede ser usado por cualquier tipo de variable.

Hagamos el ejercicio anterior pero en vez del String "Hola Matz" usamos un Integer 123456

```ruby
<br>2.4.0 :001 > 123456
 => 123456 
```

 Ahora si usamos el método puts
```ruby
<br>2.4.0 :002 > puts 123456
123456
 => nil 
```
 Ahora, guardamos en una variable y hacemos lo mismo que para el ejercicio de String.
```ruby
<br>2.4.0 :003 > numero = 123456
 => 123456 
<br>2.4.0 :004 > numero
 => 123456 
<br>2.4.0 :005 > puts numero
123456
 => nil 
``
Hay métodos como puts que sirven para imprimir sin importar el data type pero hay data types que tienen sus PROPIOS métodos. Vamos a ver cada data type y lo que podemos hacer con él usando sus métodos.





