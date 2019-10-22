Título: Cómo hablar en Ruby:

Vimos que Ruby es un lenguaje de programación, ahora tenemos que aprender a hablarlo. Lo primero, dónde lo hablamos? Nuestra voz será la línea de comandos, por ahí vamos a hablar. 

Cuando instalamos Ruby nuestra computadora aprendió a hablar ese lenguaje, ahora podemos comunicarnos con ella. Para decirle a la computadora que vamos a hablar en Ruby tenemos que decirle, o sea teclear:

###irb

Cuando damos enter la computadora nos dirá que está para hablar en ruby.

```ruby
$ irb
irb(main):001:0>
```

irb significa "interactive ruby". 
http://ruby-doc.org/stdlib-2.0.0/libdoc/irb/rdoc/IRB.html

2.4.0 :001 > 
La parte 2.4.0 nos dice qué versión de Ruby estamos usando. Por qué versiones? Así como con el tiempo hay nuevas palabras en el español como "whatsapp", los lenguajes de programación también cambian con el tiempo y cada ciertos meses o años surgen nuevas palabras y nuevo contenido para mejorar la comunicación. Cada que pasa esto hay una nueva versión.

:001 es la línea en la que nos encontramos. Si damos enter vemos como cambia a 002 y si damos enter será 003.

Ya que estamos listos hagamos algo sencillo, sumar 1 + 1. 

Ve a terminal y teclea 1 + 1, da enter y ve el resultado.

Ahora usemos un método de ruby para "imprimir" o mostrar algo. Recordando uno de nuestros ejercicios anteriores. Recuerda que Hola Matz debe ir entre comillas.

```ruby
puts "Hola Matz"
```
Qué regresa la línea de comandos?

Ahora en vez de Hola Matz, imprime tu nombre, por ejemplo yo me llamo Javier así que escribimos entre comillas "Hola Javier":

```ruby
puts "Hola Javier"
```

Qué regresa la línea de comandos?

Para salir de irb y dejar de hablar en Ruby con la computadora escribiremos:

quit
