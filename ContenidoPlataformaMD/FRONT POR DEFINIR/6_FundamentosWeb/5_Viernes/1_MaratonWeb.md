Recuerdas la aplicación que creamos en la fase uno de Flash Cards, ahora la vamos a mejorar y convertir en una aplicación web. Como siempre esta será la aplicación más compleja que habrás creado hasta ahora e incorporará todo lo que has aprendido. Además empezaras a aprender que pasa cuando los programas empiezan a crecer y como manejar los cambios.

Empezaremos por crear una aplicación con un solo deck y después incorporaremos el que existan más decks y que estos puedan ser creados por los usuarios. Además de mejorar la interfaz por medio de AJAX.   

Intentaremos que aprendas también sobre Product Management e Ingeneria de Software. Aprenderás que muchas veces las especificaciones de un proyecto son ambiguas, incompletas o contradictorias.

### Objetivos Académicos


- Administrar aplicaciones complejas a través de diseño de modelos.
- Aprender los fundamentos de administración de proyectos, incluyendo división de tareas.
- Aprender a resolver proyectos con especificaciones ambiguas o incompletas

## Actividades

### Especificaciones de la Aplicación

Los decks los debes determinar con anterioridad, podrás crearlos utilizando un `seed`.

Crea para empezar únicamente tres decks de 5 cartas cada uno. Esto hará más fácil el poder debuggear tu aplicación.

Los Decks tienen varias Cartas. Una Carta pertenece a un solo Deck.

Cuando un usuario inicia sesión vera una lista de los Decks, solamente podrá jugar si tiene una sesión activa.

Un usuario puede jugar una `ronda` (una serie de intentos de adivinar las cartas de un deck). El usuario podrá ver una lista de todas las rondas que ha completado y estadísticas de las mismas(deck utilizado, número de intentos para adivinar una carta, número de aciertos y de errores).

### Rutas y Modelos

Determina las rutas que necesitaras y utiliza diferentes archivos para categorizarlas.

Un usuario con una sesión activa deberá:

- Poder elegir un deck para empezar una ronda
- Poder jugar una ronda
- Recibir retroalimentación (estadísticas) de como le fue en la ronda jugada
- Ver una lista de las rondas que ha jugado y estadísticas de las mismas.

Pregúntate que modelos necesitas y como se relaciona cada uno. Seguramente utilizarás lo siguientes: `User`, `Deck`, `Card`, `Round`, and `Guess`.  

Piensa como vas a hacer para modelar una ronda en particular. No te compliques. Primero haces un intento para adivinar, luego te enseñan la respuesta correcta y te dicen si la tuviste bien o mal. Después te sigues con la siguiente carta hasta acabar con las cartas del deck. Al finalizar la ronda el usuario será llevado a una página donde le arrojará estadísticas de la ronda que acaba de finalizar y después de ella a la página donde se enlistan todas las rondas que ha completado en orden cronológico y con sus estadísticas.  

Hay muchas formas de modelar una ronda pero seguramente la anterior es la más simple, empieza por ella.

Para tu MVP no te preocupes por hacer las cosas con AJAX.
