Título: 
###Ejercicio arrays each

En el ejercicio anterior usamos el método .each para saludar a nuestros amigos. Pero ahora tendrás que saludar a cada amigo y que la primera letra de su nombre esté en mayúscula.

¿Cómo agregamos el método .capitalize dentro del método .each para poner en mayúscula la primera letra de cada nombre?

```ruby
amigos = ["alan", "césar", "alex", "isa"]

amigos.each { |amigo| puts "Hola #{amigo}!" }
```

*Respuesta:

```ruby
2.4.0 :004 > amigos.each { |amigo| puts "Hola #{amigo.capitalize}!" }
Hola Alan!
Hola César!
Hola Alex!
Hola Isa!
 => ["alan", "césar", "alex", "isa"] 
``

