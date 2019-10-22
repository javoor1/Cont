Para este ejercicio podrás modificar tanto el CSS como el HTML.
Vamos a crear una barra de navegación pero para navegar por la misma página. Este tipo de navegación se utiliza mucho por ejemplo en "Landing Pages", donde toda tu información se encuentra en la misma página pero en diferentes puntos de tu scroll.

## Objetivos Académicos

- Comprender cómo funcionan las anclas en HTML.

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8aFpGZFVyNHZPTDQ)
Para este ejercicio te daremos un archivo de HTML y uno de CSS.

Dentro del contenido encontrarás:

- Un header
- Links de navegación
- Información relevante de una página web.

La página es algo larga por lo que crearemos links a secciones específicas de la misma. En la parte de arriba hay varios links que por el momento no apuntan a ningún lugar. El objetivo es que modifiques lo necesario para que apunten a la sección correspondiente de la página.

El usuario deberá poder hacer click en uno de los links y éste lo debe de llevar a la sección correspondiente en la parte de abajo de la página.

Para poder realizar esto necesitas básicamente tres cosas.

- Incluir en cada sección un ancla (esto se puede lograr de varias formas)
- Agregar valores reales a la propiedad `href` de los links dependiendo a donde quieres que apunte.
- Agrega con CSS un espacio significativo entre secciones para que realmente comprendas cómo funciona este ejercicio.

Como valor extra puedes agregar a tus anclas una función de `jQuery` llamada `SmoothScroll`, visualmente añade un efecto en el cual tu página se desplaza hasta el objetivo de tu link, agrega el siguiente código a tu página, es un tip que te damos para mejorar la experiencia del usuario, sino entiendes completamente el código puedes preguntarle a uno de los profesores como funciona:

```javascript
jQuery(function($) {

    // The speed of the scroll in milliseconds
    var speed = 1000;

    // Find links that are #anchors and scroll to them
    $('a[href^=#]')
      .unbind('click.smoothScroll')
      .bind('click.smoothScroll', function(event) {
        event.preventDefault();
        $('html, body').animate({ scrollTop: $( $(this).attr('href') ).offset().top }, speed);
      });
  });

```
