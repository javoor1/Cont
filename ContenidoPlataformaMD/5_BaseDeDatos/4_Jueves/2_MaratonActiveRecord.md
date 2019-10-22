Algún día has jugado Maratón? Este es un juego en el que existe una baraja de cartas. Cada carta contiene una pregunta con una serie de opciones donde solo una de ellas es la respuesta a la pregunta.
En este ejercicio vamos a crear en equipos una aplicación para jugar maratón, nuestra primera implementación no contendrá opciones si no que le daremos al usuario un solo intento para adivinar la respuesta.

Tu juego se verá de la siguiente manera:

```ruby
$ ruby maraton.rb

---------------------------
Bienvenido a Maratón.
---------------------------

1) Login
2) Signup
3) Scores

---------------------------
Login
---------------------------

Email: ********************
Password: ******************

-----------------------------------------------------------------------------
Te daremos una pregunta y deberás adivinar la respuesta correcta.  
Listo?  Arranca el juego!
-----------------------------------------------------------------------------

Pregunta
¿Quién inventó el revolver en el siglo XIX?

Intento: Mark Zetme
Incorrecto!

Pregunta
¿Quién inventó el revolver en el siglo XIX?

Intento: Mark Zetme
Incorrecto!

# Así sigue el juego hasta acabar con las cartas

Acabaste:
Tuviste 5 Correctas y 3 Incorrectas.

---------------------
Scores
---------------------

#La presentación de los resultados será de acuerdo a tu imaginación.
```

Utiliza Github y recuerda hacer "commit" lo más seguido posible.


## Objetivos Académicos

- Comprender como separar responsabilidades
- Crear una aplicación interactiva por medio de la consola
- Aprender a utilizar [Active Record](http://guides.rubyonrails.org/active_record_basics.html)
- Aprender a usar asociaciones con [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)

## Actividades

### Diseña y planea tu aplicación

Lo primero que deberás hacer es planear tu aplicación. Utiliza pseudocódigo y wireframes.

- Como va a funcionar el flujo?
- Que clases voy a necesitar? y que métodos voy a necesitar?
- Que debe de ir en cada parte de tu MVC.
- Realmente comprendes la lógica del juego? Escribe paso por paso que debe de pasar.
- Dentro de tus clases que métodos deben ser públicos y cuales privados.  

Vamos a hacer esta aplicación siguiendo el patrón MVC, entre más hagamos aplicaciones de este tipo más comprendas los beneficios que tienen.

- [Model-View-Controller](http://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller).

Pregúntate lo siguiente:

- Que representa el Modelo?
- Que responsabilidad tiene el controlador?
- Para que sirve la vista?
- Se parecen mucho la vista y el controlador, esta bien duplicar tanto?

### Crea tus cartas

Deberás crear una serié de preguntas y respuestas, en Internet podrás encontrar muchos ejemplos. No te compliques y no escribas más de 15 preguntas. Crea un `seed` con estas preguntas.

### Nuestro programa

Recuerda y probando tu programa constantemente para saber que esta sirviendo. Piensa en las siguientes cosas? y donde deben de ir según el MVC?

- Como va a empezar tu juego y en que parte del MVC comienza?
- Como vas a obtener las preguntas y respuestas de la base de datos
- Como vas a revisar si una pregunta es correcta o incorrecta
- Como va a terminar el juego?

Deberás implementar que el usuario pueda escoger un "Deck" diferente de cartas. Por ejemplo las que son de "Historia", "Geografía", "Entretenimiento", etc. Por lo menos tres Decks son necesarios para la aplicación.

Finalmente cada pregunta debe tener por lo menos tres opciones y que el usuario tenga que escoger entre ellas la correcta.

>TIPS:

- Es importante crear los modelos y sus asociaciones correspondientes.

- Considera lo siguiente:
  - Un User puede jugar varios Decks
  - Un Deck puede ser jugado por varios Users  
  - Un User puede jugar varios Games
  - Un game en particular solo puede ser jugado por un User
  - Un Deck tiene varias Questions
  - Una Question pertenece a un Deck
  - Una Question tiene una o varias Answers (options)
  - Una Answer (option) pertenece a una Question
  - Al final el usuario podrá ver sus resultados obtenidos en los juegos correspondientes. Por lo que deberás considerar una tabla que lleve las estadísticas del juego (respuestas correctas e incorrectas). Se podrá saber de un usuario la respuesta dada a una pregunta y conocer si esa respuesta es la correcta.

- Es importante validar el modelo antes de empezar a desarrollar el programa. Realiza pruebas de cada modelo en la consola, así como las consultas necesarias para asegurarte que obtienes la información que requieres.
