Título:
###Métodos en Ruby


Programamos un fizzbuzz anteriormente. Si quisiéramos usar varias veces fizzbuzz tendríamos o que correr nuestro programa (ruby fizzbuzz.rb) varias veces, o repetir el mismo código en el archivo varias veces. Ninguna de las dos opciones suena bien.

```ruby
i = rand(1..25)
if i % 15 == 0
      puts "FizzBuzz"
.
.
.


i = rand(1..25)
if i % 15 == 0
      puts "FizzBuzz"
elsif i % 3 == 0
.
.
.
```

Qué podemos hacer? La idea sería tener una especie de código que pudiéramos llamar (o invocar) cada que necesitáramos, ejecutara la tarea deseada, nos regresara un resultado y nos permitiera continuar con el resto del programa.

Este concepto que buscamos lo llamaremos "Método". Un método (o función en otros lenguajes de programación) es justo una forma de definir un pedazo de código y asignarle un nombre para poder llamarlo cada que necesitemos.

Hemos usado métodos desde el principio, nuestro primer código fue:
puts "Hola Matz", o lo que es lo mismo puts("Hola Matz"). puts es un método. Y todos los métodos que usamos para Strings por ejemplo .length, o .insert(), métodos para Arrays por ejemplo include?(); métodos para Hashes por ejemplo .keys, o .values, son "built-in methods", o sea, métodos que vienen ya programados por default con Ruby para hacernos la vida más fácil y no tener que programarlos nosotros.

Imagina que tienes un "pedazo" de código muy largo, que usarás muchísimas veces dentro de tu código, o sea, que tendrías que repetir mucho, ¿no sería buena idea guardar ese código con un nombre y poder usarlo cada que necesitemos? Eso es un método a grandes rasgos. Por ejemplo, el método puts se ocupa muchas veces a lo largo de un programa, no vamos a programarlo todo el tiempo, simplemente llamamos varias líneas de código bajo el nombre puts.

Un principio importante en programación es "DRY" que significa "Don't repeat yourself", o en español "No te repitas". ¿Por qué? Imagina que usamos las exactas mismas líneas de código en 6 lugares distintos de nuestro programa y por alguna razón tenemos que hacer un cambio a ese código. Sería un gran problema porque tendríamos que ir a los 6 lugares a corregirlo, Si tuviéramos ese código en un método, en caso de tener que hacer cambiios, sólo tendríamos que hacerlo una sola vez.

#Declarar métodos

Declarar un método es muy sencillo. Usamos la palabra reservada def y end

Ejemplo de un método:

```ruby
def saludo()
    puts "Hola!"
end
```


```ruby
def algun_nombre()
    puts "Hola!"
end
```

La estructura que vemos es muy sencilla, primero usamos la palabra reservada def seguida de un nombre que debe ir en minúsculas seguido de paréntesis. Después de los paréntesis tenemos código, el código que necesitemos no importa que tan complejo o largo, en este caso sólo tenemos puts "Hola!", acabando nuestro código tenemos que cerrar con la palabra reservada end.

def nombre(paréntesis)
    código
end

Crea un archivo llamado metodos1.rb

dentro copia el código:

```ruby
def algun_nombre()
    puts "Hola!"
end
```

Ahora ve a línea de comandos y corre el archivo:
ruby metodos1.rb 

$ ruby metodos1.rb

Vas a notar 

Cambia la llamada el método hasta el final donde ya esté declarado el método.que el programa no hizo absolutamente nada. ¿Por qué si indicamos que imprimiera Hola!?

*Un método sól

Cambia la llamada el método hasta el final donde ya esté declarado el método.o se EJECUTA cuando se LLAMA*

¿Y cómo llamamos un método? Muy fácil, simplemente indicamos su nombre.

```ruby
def algun_nombre()
    puts "Hola!"
end

algun_nombre()
```
Si corremos el archivo vemos que ahora sí imprime Hola!

$ ruby metodo2.rb
Hola!

*Los métodos no hacen nada hasta que son llamados*

En realidad todo lo que se encuentre dentro de def y end, no será ejecutado nunca, no interfiere con nuestro código de ninguna manera, es simplemente una forma de guardar el código en una bolsa y sacarlo hasta que lo necesitemos, y cuando lo necesitamos simplemente lo llamamos con su nombre para ejecutarlo.


Dentro del mismo archivo definamos otro método.

```ruby
def algun_nombre()
    puts "Hola!"
end

def metodo_2()
    puts "¿Cómo te llamas?"
end

algun_nombre()
```
Si corremos el archivo veremos que sólo imprime Hola!, el resto del código no hace nada porque no fue llamado. El método metodo_2 no afecta en nada el programa.

Como ejercicio: Incluye la llamada al método y corre el archivo.

*Los métodos deben declararse antes para poder ser usados después*

Ruby lee el código de arriba hacia abajo línea por línea. Si tratamos de ocupar una variable o un método que no ha sido declarado con anterioridad Ruby no podrá continuar porque no sabrá qué hacer con algo que no existe.

Veamos el ejemplo:

```rub y2.4.0 :001 > a + b
NameError: undefined local variable or method `a' for main:Object
    from (irb):1
```
Ruby no sabe qué hacer y nos dice que no están definidas la variables o método a.

Si llamamos un método antes de definirlo ruby nos dirá lo mismo. Cambia la llamada al método algun_metodo y corre el archivo.

```ruby 
algun_nombre

def algun_nombre()
    puts "Hola!"
end

def metodo_2
    puts "¿Cómo te llamas?"
end
```
Al correrlo nos mandará un error:

$ ruby metodos1.rb
untitled.rb:88:in `<main>': undefined local variable or method `algun_nombre' for main:Object (NameError)

*Recuerda que siempre debes definir o declarar antes lo que vas a ocupar después.*

Cambia la llamada el método hasta el final donde ya esté declarado el método.

