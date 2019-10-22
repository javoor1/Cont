Una de las características que muchas páginas o aplicaciones tienen es la habilidad de hacer comentarios, por ejemplo sobre un post, una imagen, un video y también sobre otros comentarios.

Normalmente cuando implementas este tipo de funcionalidad, la creación de un comentario implica ser enviado al servidor y guardarlo en una base de datos para que persista, así si actualizas la página, el comentario no se pierda. En éste caso nos vamos a saltar la parte de enviar al servidor los datos.

Utilizaremos una forma y JavaScript junto con jQuery para crear un elemento en el DOM basado en la información capturada en la forma y agregar éste elemento a una lista de comentarios.

Éste reto no es tan fácil como pensabas, pero te ayudaremos a lograrlo.

Éstos son algunos recursos que te recomendamos leer:

- [Basics of jQuery Events](http://learn.jquery.com/events/event-basics/) y [Event Handling](http://learn.jquery.com/events/handling-events/), específicamente el evento `submit`.
- Creating DOM elements with the [jQuery()](http://api.jquery.com/jQuery/#jQuery2) method.
- The jQuery [val( )](http://api.jquery.com/val/) method.
- [event.preventDefault()](http://api.jquery.com/event.preventDefault/)

## Objetivos Académicos

- Practicar el uso de JavaScript Object Oriented.
- Practicar el uso de jQuery.

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8YlBhckxRQm5ZdVk)

Seguramente vas a escribir mucho código JavaScript, más de lo que has creado en otros retos. Por ello corre tu programa y pruébalo constantemente. Utiliza la consola de Google Chrome para debuggear. Comenta tu código para saber qué hace cada parte.

Lee y analiza el HTML y CSS para comprender muy bien la estructura del programa antes de comenzar a escribir JavaScript.

En el siguiente video se puede ver cómo debe de quedar tu aplicación.

<center>
    <iframe width="420" height="315" src="https://www.youtube.com/embed/9166FJsgc7g" frameborder="0" allowfullscreen></iframe>
</center>

En éste reto deberás intentar escribir tu código orientado a objetos. Busca que tu código sea elegante.

La siguiente lista te dará una idea de lo que debes hacer.

- Cuando el usuario hace click en el botón "Nuevo comentario", deberá aparecer una forma nueva.
- Al llenar la forma y hacer click en el botón de "Enviar". La forma debe de desaparecer y el nuevo comentario deberá de ser añadido a la lista.
- Si el usuario olvida escribir un comentario o poner el autor, deberás arrojar un error y no dejar que se agregue un comentario que no sea válido a la lista.

### Extra

Si pudiste completar este reto ahora intenta incorporar código que guarde los comentarios para que persistan, enviándolos a un servidor y guardándolos en una tabla. Puedes hacerlo desde ésta aplicación o copia la lógica y código de una app que hayas hecho como la de un Blog o la de Quora para agregar en ellas esta nueva `feature`.

Paso 1: Crea un modelo "Comment" y una tabla para guardarlos.
Paso 2: Crea una ruta en la cual recibirás la información.
Paso 3: Modifica tu JS para que antes de crear el comentario en el DOM, envíes la información al servidor. Sigue creando el comentario en el DOM de igual manera.
Paso 4: Crea un callback el cual haga saber al usuario que su comentario fue guardado exitosamente.

Hay muchas formas de hacer este callback, una puede ser realmente no crear el comentario en el DOM hasta que se haya guardado exitosamente. Pero qué pasaría si el usuario quiere seguir trabajando, crees que haya otra forma de hacerlo?
