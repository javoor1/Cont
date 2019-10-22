Crea la clase `NumberGuessingGame`. Al crear una instancia de la clase (`NumberGuessingGame.new`) el programa asigna un número aleatorio entre 0 y 9, el cual deberemos adivinar después con el método `guess`.

El método `NumberGuessingGame#guess` recibe un entero y regresa:
- "Too low", si el número es más pequeño que el número aleatorio que asignó el programa.
- "You got it!", si el número es el mismo que el número aleatorio.
- "Too high", si el número es más grande que el número aleatorio que asignó el programa.

```ruby
# Pruebas

game = NumberGuessingGame.new

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"
```

Ten en cuenta que cada que ejecutes el programa te va a mostrar algo diferente por que el número que tienes que adivinar cambia cada vez.

## Extra

Haz que tu programa sea interactivo. El usuario debe poder introducir los números que recibe el método `guess`. También podrá iniciar un nuevo juego o salir.

[Fuente](http://ruby.about.com/od/beginningruby/ss/Worked-Example-Number-Guessing-Game.htm)
