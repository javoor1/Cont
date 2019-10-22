### ¿¿Una forma asíncrona??

Asíncrono es un adjetivo utilizado para describir objetos o eventos que no están coordinados entre si con respecto al tiempo.

Para comprender el concepto de formas asíncronas nos vamos a basar en el ejercicio de Abuelita Sordita y vamos a utilizar jQuery y AJAX para poder hacer una petición de diferente manera a como lo hace por deafult un browser.

AJAX es el acrónimo de (Asynchronous JavaScript And XML) y es una técnica de Desarrollo Web en la cual desde el browser se crean peticiones asíncronas al servidor en segundo plano, con el fin de realizar cambios sobre las páginas sin necesidad de recargarlas.

### Objetivos Académicos

- Comprender la diferencia entre asíncrono y síncrono
- Utilizar jQuery y AJAX para crear una petición de HTTP
- Utilizar jQuery para actualizar el DOM

## Actividades

Deberás utilizar la aplicación del ejercicio de Abuelita Sordita del día de ayer. Únicamente tendrás que cambiar `application.js` y `index.rb` para lograrlo.

### JavaScript

Todo tu JavaScript lo deberás escribir dentro de `public/js/application.js`, copia el siguiente código para comenzar.

```javascript
$(document).ready(function() {
  // Este código corre después de que `document` fue cargado(loaded)
  // completamente.
  // Esto garantiza que si amarramos(bind) una función a un elemento
  // de HTML, éste ya exista en la página.
});
```

### Implementa Abuelita Sordita de manera asíncrona

Para esto deberás utilizar los siguientes métodos de jQuery, puedes investigar qué hacen y cómo funciona:

- [.submit()](http://api.jquery.com/submit/)
- [.serialize()](http://api.jquery.com/serialize/)
- [jQuery.post()](http://api.jquery.com/jQuery.post/)

Ya que aprendiste cómo funcionan éstos métodos, fíjate que puedes replicar la funcionalidad del método `serialize()` obteniendo el valor de los `input` de otra manera.
Al hacer un `post`, revisa cómo funciona su `callback` para regresar la respuesta de la abuelita para que puedas hacer un append al DOM de dicha respuesta.

También deberás investigar cómo hacer un `bind` con jQuery:

- [bind to events with jQuery](http://api.jquery.com/on/)

### Tip: Necesitas 5 pasos para conseguirlo

Escribimos estos pasos en inglés por la complicación que puede ser traducir los términos.

- Bind a callback to be triggered when your form is submitted
- Prevent the form to be submitted from submitting in the default way
- Serialize the data in the form to be submitted
- Use jQuery's AJAX API to make a POST request to the server
- When the server responds, update the page accordingly (this is the asynchronous part — you don't know when the server will respond)

### ¿Qué en realidad es AJAX?

Con ésta técnica a través de JS el browser crea una petición HTTP al servidor desde la página actual sin necesidad de refrescar la página. Dado que no sabemos cuándo responderá el servidor debemos crear una función que espere la respuesta, pero cualquier cosa que pase dentro del browser podrá seguir funcionando.

Cuando el browser está operando de manera síncrona tiene que esperarse a que regrese la repuesta de una petición para poder hacer lo siguiente. Cuando el browser está operando de manera asíncrona entonces manda la petición y puede continuar elaborando tareas, solamente tiene que saber que la respuesta puede regresar en cualquier momento.

Entre más ejercicios e información empieces a intercambiar en tus aplicaciones, comprenderás mejor los beneficios y desventajas de ésta técnica.
