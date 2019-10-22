Para este ejercicio crearemos el juego de sopa de letras. Aunque parece fácil puede llegar a ser algo complicado.   

La [sopa de letras](http://es.wikipedia.org/wiki/Sopa_de_letras) es un juego que consiste en descubrir dentro de un tablero de letras un número determinado de palabras, enlazando estas letras de forma horizontal, vertical o diagonal y en cualquier sentido, tanto de derecha a izquierda como de izquierda a derecha, y tanto de arriba a abajo, como de abajo a arriba.

Enlaces Externos

- [Juega Sopa de Letras en Internet](http://www.dibujosparapintar.com/sopas_de_letras/sopa_72185)
- Este método puede servirte para mejorar la representación gráfica del tablero.[String#ljust](http://www.ruby-doc.org/core-1.9.3/String.html#method-i-ljust)

## Objetivos Académicos

- Modelar una solución dinámica para un juego real
- Comprender la diferencia de la representación interna a externa
- Conocer el método to_s  

## Actividades

Antes de empezar tienes que estar seguro que comprendes el juego y que tienes un proceso para resolverlo.

Divide y vencerás: dividiremos en nuestro problema en partes más pequeñas para simplificar su dificultad.  

### El Tablero  

Sigue la estructura que se te da para ir acostumbrándote a crear clases e ir organizando y encapsulando tu código. Utiliza estos tableros donde ya están distribuidas algunas palabras, solo hay que adecuarlos.

Nuestros tableros serán de `8x5`. 8 Filas y 5 Columnas.

```ruby
# Palabras y Plantillas de Tableros
[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

```

```ruby

class Board
# You should put here the given boards templates
# @@boards_templates =  
  def initialize
     complete_board!
  end

  def to_s
    "try to print a board, what does this method do?"
  end

  private

  def complete_board!
        #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
  end
end

board = Board.new
puts board

```

El método to_s es el símil del método toString de otros lenguajes de programación. Este método se utiliza para que nos devuelva una cadena de texto, que suele ser la información más relevante del objeto. Este método lo heredan todas las clases de la clase objeto.  Si haces un clase `Dog` vacía y llamas `puts` en una de sus instancias regresará `#<Dog:0x007ffd389b7930>`. Tu puedes re-definir este método y en nuestro caso, deberá regresar una representación gráfica de nuestro tablero.


### La Solución

Ya que tenemos el tablero creado, debemos crear un método que verifique si una palabra se encuentra dentro del tablero. Esto no será fácil, recuerda que existen varias maneras diferentes en las que una palabra puede estar escrita.

Te recomiendo jugar sopa de letras e ir apuntando el proceso por el cual comienzas a buscar una palabra, paso por paso. Después de tener estos pasos deberás crear el pseudocódigo.

Una vez que tengas el pseudocódigo ahora simplemente hay que empezar a escribir el código. Escribe un método llamado `include?(word)`.

### Consejos

- Pregúntate cual es la manera más fácil en la que puedes guardar tu tablero (`string`, `array`, `nested-array`).
- Refactoriza tu código, estarás realizando una y otra vez procesos muy similares, lo único que cambiará será el orden de los datos.  
