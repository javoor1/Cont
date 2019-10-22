El intérprete de Ruby es un programa que corre tu computadora y todo lo que se encuentra afuera recibe el nombre de ambiente (`environment`).

Una de las formas de intercambiar información entre el ambiente y tu programa se llama `ARGV`. Esta es una constante que está predefinida en todos los programas de Ruby. Y Ruby la representa como un `Array de Strings` que contiene los argumentos pasados a través de la línea de comandos.

Crea un archivo con el siguiente código:

```ruby

puts "Los argumentos recibidos son:"
puts ARGV.inspect
puts ""

```

Córrelo 4 veces de la siguiente forma:

```

$ ruby argv.rb
=> Los argumentos recibidos son:
=> []

$ ruby argv.rb un_argumento
=> Los argumentos recibidos son:
=> ["un_argumento"]

$ ruby argv.rb argumento_uno argumento_dos
=> Los argumentos recibidos son:
=> ["argumento_uno", "argumento_dos"]

$ ruby argv.rb "argumento uno con espacios" "argumento dos con espacios"
=> Los argumentos recibidos son:
=> ["argumento uno con espacios", "argumento dos con espacios"]

```

## Objetivos Académicos

- Familiarizarse con la interacción entre la consola y el programa.


## Actividades

### Usar tu programa Pig Latin desde la consola

Haz que el programa de Pig Latin que hiciste sea interactivo. Que sea posible ejecutarlo desde la consola de la siguiente forma:

```

$ ruby pig_latin.rb pig banana trash apple elephant
=> igpay ananabay ashtray appleway elephantway

```
