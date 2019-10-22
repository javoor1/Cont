Título: 
### Método .gets

Vamos a "desviarnos" un poquito para poder continuar con un último ejercicio de control de flujo y decisiones. 

¿Cómo nos comunicamos con un usuario?

Hasta el momento siempre asignamos valores a nuestras variables de manera arbitraria, pero hay un método que nos permite dejar que la persona frente a la computadora introduzca información, un __"input"__.

Este método se llama ___.gets___

Es muy sencillo, vamos a probarlo en la consola, sólo tienes que introducir:

gets

Verás que la línea de comandos se queda estática, esto es porque tienes que teclear algo. Teclea: _HOLA!_ (no como un string de ruby sino como lo teclearías para saludar a alguien en un mensaje).

2.4.0 :162 > gets
HOLA!
 => "HOLA!\n"

El método gets recibe como parámetro lo que el usuario teclea en la computadora, y como TODO MÉTODO debe regresar algo, gets nos regresa lo que tecleamos en forma de un string. Como todo data type podemos asignarlo a una variable.

```ruby
usuario_input = gets

Pruébalo en irb.

2.4.0 :163 > usuario_input = gets
HOLA AMIGA!
 => "HOLA AMIGA!\n" 
```

HAY UN PROBLEMA! El formato con el que ruby interpreta el input del usuario tiene un salto de línea \n que es muy molesto si lo vamos a usar dentro de variables. Para esto podemos usar OTRO MÉTODO que limpiará el salto de línea:

```ruby
usuario_input = gets.chomp

Introduce "HOLA AMIGA!" igual que lo hiciste anteriormente.

2.4.0 :164 > usuario_input = gets.chomp
HOLA AMIGA!
 => "HOLA AMIGA!" 
```

Ya podemos preguntarle cosas al usuario! Cómo le preguntarías su nombre?

nombre_usuario = gets.chomp

2.4.0 :166 > nombre_usuario = gets.chomp
Javier
 => "Javier"

Puedes llamar el método gets.chomp dentro de otro método, por ejemplo puts, corre lo siguiente en línea de comandos y ve cómo funciona:

puts gets.chomp


Algo importante a considerar es que el método gets nos regresa un string, SIEMPRE nos regresará un string. Qué pasa cuando le pedimos al usuario ingresar un número? Este número lo regresará como string también. Definamos una variable numero y asignemos el valor de gets.chomp (que es un string) y despues veamos con el método .class qué tipo de data type es la variable numero:

```ruby
2.4.0 :004 > numero = gets.chomp
300
 => "300" 
2.4.0 :005 > numero.class
 => String 
```

Si queremos hacer operaciones matemáticas con la variable numero tendremos problemas porque es un string. Por suerte Ruby puede convertir ciertos strings en números. Para esto el string tiene que estar compuesto por caracteres numéricos ÚNICAMENTE. Para convertir un string a número tenemos dos opciones, convertirlo a float(decimal) o integer(entero)

```ruby
2.4.0 :006 > numero.to_f
 => 300.0 

2.4.0 :011 > numero.to_i
 => 300 
```

Estos métodos __no son__ destructivos y no tienen versión destructiva, __no podremos__ usar !

Lo que sí podemos hacer es usarlos desde un principio cuando el usuario ingresa el número:

```ruby
numero = gets.chomp.to_i #(si queremos un número entero)
numero = gets.chomp.to_f #(si queremos un número decimal)

Para un número entero:

2.4.0 :013 > numero = gets.chomp.to_i
300
 => 300 
2.4.0 :014 > numero.class
 => Integer 

Si queremos un número decimal:
2.4.0 :015 > numero = gets.chomp.to_f
300
 => 300.0 
2.4.0 :016 > numero.class
 => Float 
```

Ahora ya sabes cómo pedirle números a un usuario.


Con lo siguiente podrás hacer muchas cosas dentro de tu código. Combinar todo lo que hemos visto, asignar variables, usar condicionales, etc.


