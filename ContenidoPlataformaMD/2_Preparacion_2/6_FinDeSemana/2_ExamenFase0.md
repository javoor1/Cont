Crea un archivo y responde las siguientes actividades o preguntas. Al finalizar deberás entregar este archivo.

Cada pregunta o actividad la deberás pegar como comentario y abajo de ella poner la solución. Si hay pruebas no olvides copiar las pruebas con sus comparaciones.


### Tipos de Datos

¿Qué tipo de datos son cada una de las siguientes variables?

```ruby
# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 5
w = "hola"
x = 5.0
y = [1, 2, 3]
z = {a: 1, b: 2, c: 3}
# Respuesta
...
```


### Arrays

```ruby
# Obtén el valor del segundo elemento de la lista `fruits` utilizando código. Y cambia el tercer valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach"]
# Respuesta
...
```
```ruby
# Obtén el último elemento de la lista `foods`.
foods = ["hamburger", "donut", "pizza", "chilaquiles"]
# Respuesta
...
```
```ruby
# Añade un elemento más al final de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta
...
```

### Hashes
- Crea la variable `my_hash` e inicialízala a un Hash vacío.
- Crea la variable `translations` e inicialízala a un Hash con 3 palabras en inglés con su correspondiente traducción a español.
- A la variable `translations` del ejercicio anterior agrégale una palabra más.
- Lee el `value` de alguna de las palabras de `translations` y asígnalo a la variable `spanish_word`.

### If/else
- Crea el método `number_sign` que nos diga si un número es negativo o positivo. Si el número es negativo regresa el string "Negative", y si es positivo "Positive".

### Loop
- Crea el método `print_double` que reciba un arreglo de números, e imprima el doble de cada número.
- Crea el método `double_array` muy parecido al ejercicio anterior, con la diferencia que no imprime los número sino que regresa un nuevo arreglo con los elementos multiplicados por 2.

### Métodos
- Crea el método `odd_or_even`, que recibe dos argumentos: `min` y `max`. Regresa un arreglo intercambiando cada elemento del rango por el string "par" o "non" según lo que son.
```ruby
odd_or_even(5, 10)
=> ["non", "par", "non", "par", "non", "par"]
```

### Sintaxis de Clases

Ruby utiliza una forma muy conveniente de crear métodos para poder
definir y leer el valor de los atributos de una clase.
Éstos métodos se llaman: `reader y writer` ó `getter y setter` (dos formas distintas de llamarlos).

```Ruby
attr_accessor :name
attr_reader :date_of_birth, :breed
attr_writer :breed
```
Crea una clase `Dog` y agrega el código necesario para hacer pasar las pruebas.
Necesitarás ciertos getters y setters; crealos manualmente sin utilizar los métodos que Ruby nos ofrece: `attr_*`

```Ruby
# Pruebas
fido = Dog.new("Fido","02/02/2002","Bulldog")
p fido.name == "Fido"
p fido.date_of_birth == "02/02/2002"
fido.name = "Snoopy"
fido.breed = "Beagle"
p fido.name == "Snoopy"
p fido.breed == "Beagle"
```

### Clases

- Crea la clase `rectangle`, con los atributos `height` y `width`. Y crea un método que calcule el perímetro y otro método que calcule el área del rectángulo. Permite que se puedan leer y modificar los valores de `height` y `width` después de su creación.

- Crea la clase `Playlist` que para inicializarla recibe 2 argumentos: `name` (nombre del playlist) y `songs` (lista de canciones).
Crea una forma para poder leer el nombre del `Playlist`.
Crea el método `number_of_songs` que regresa el número de canciones que contiene el `Playlist`.
Crea el método `add_song` que agrega una canción a la lista.
Crea el método `next_song` que regresa la siguiente canción del `Playlist`. Para esto necesitarás llevar control de cuál es la canción actual. Si el playlist se encuentra en la última canción debe de volver a iniciar.

Al crear una nueva instancia de `Playlist` la canción actual por default debería ser la primera canción de la lista que le pasen.
