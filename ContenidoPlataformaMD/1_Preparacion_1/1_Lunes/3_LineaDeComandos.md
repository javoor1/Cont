En este ejercicio aprenderemos a usar la consola o Terminal de tu computadora.

La Consola permite dar instrucciones por medio de líneas de texto (comandos).

Para abrir la consola sigue estos pasos dependiendo de tu computadora, si no la puedes abrir con estos pasos Googlea:


## Windows

- Da click en el botón de Inicio (en la parte inferior izquierda).
- Busca la palabra `cmd`.
- Abre la aplicación que se llama "Símbolo del Sistema"

[Explicación para diferentes versiones de Windows](http://es.wikihow.com/abrir-la-l%C3%ADnea-de-comandos-en-Windows)


## MacOS

En folder de `Aplicaciones` encontrarás un folder llamado `Utilidades`. Abre el programa `Terminal`. Te recomendamos arrastrar este programa a tu `Dock` ya que lo estaremos usando durante todo el curso.

Otra manera de abrir la `Terminal` es usando Spotlight, solo escribe la palabra terminal en la barra de búsqueda y da enter.

[Video explicando los pasos](https://www.youtube.com/watch?v=zw7Nd67_aFw)


## Comando más comunes

Investiga y juega con los siguientes comandos. Apréndetelos porque los vas a usar mucho.

- `pwd` (en Mac), `cd ,` (en Windows). Si estas usando Windows vas a tener que cambiar cada vez que use `pwd` el tutorial a `cd ,`
- `cd`
- `ls` (en Mac), `dir` (en Windows). Fíjate que en el tutorial vas a tener que cambiar el comando `ls` a `dir` si estas usando Windows
- `mkdir`
- `cp`
- `mv`
- `rmdir`
- `exit`
- `sudo` (sólo Mac)

En el siguiente [tutorial](http://cli.learncodethehardway.org/book/) vienen las explicaciones y ejercicios de los comandos anteriores. Si tienes tiempo el tutorial tiene más comandos que te serviría aprender.


## Abrir irb

`irb` es la consola interactiva de Ruby ([Interactive RuBy shell](http://en.wikipedia.org/wiki/Interactive_Ruby_Shell)). Aquí podrás correr código de Ruby para jugar y aprender sin miedo de destruir nada.

Abre `irb` con el siguiente comando desde la consola:

```
irb
```

Dentro de `irb` haz los siguientes ejercicios:
- Crea la variable `name` y asígnale tu nombre.

## Corre un archivo de Ruby

En el `Escritorio` crea el archivo `prueba.rb` con el siguiente contenido:

```ruby
print "What's your first name? "
first_name = gets.chomp

print "What's your last name? "
last_name = gets.chomp

print "What city are you from? "
city = gets.chomp

print "What state or providence are you from? "
state = gets.chomp

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}"
```

En la Consola, posiciónate en la carpeta `Escritorio` y ejecuta el siguiente comando:

```
ruby prueba.rb
```

Así se corre un archivo de Ruby. Se utiliza el comando `ruby` y como argumento se especifica el nombre del archivo (incluyendo la extensión) que queremos ejecutar.
