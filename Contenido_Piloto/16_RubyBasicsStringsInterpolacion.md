Título: Interpolación en un string.

La interpolación es una forma de leer el valor de una variable dentro de un string.

Declaramos la variable tipo string como nombre:

nombre = "Javier"

```ruby
2.4.0 :001 > nombre = "javier"
 => "javier" 
```
Ahora declaramos saludos como string y dentro de las comillas usamos #{} para indicarle que dentro de las llaves irá otra variable.

```ruby
2.4.0 :002 > saludos = "Hola #{nombre}"
 => "Hola javier" 

2.4.0 :008 > puts a
Hola Javier
 => nil 
```

De esta forma podemos leer dentro de nuestro string el contenido de otra variable, la que sea. Por ejemplo usemos un Integer:

```ruby
2.4.0 :014 > a = "la variable numero es igual a #{numero}" 
 => "la variable numero es igual a 100"
```
