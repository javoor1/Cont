Vamos a crear una aplicación que permite a los usuarios crear sus propias encuestas de opción múltiple y a otros usuarios responder las encuestas.

- Conoces [SurveyMonkey](https://es.surveymonkey.com/)

Esta aplicación va a utilizar una combinación de JavaScript y AJAX para lograr los efectos deseados.

Una encuesta tendrá muchas preguntas y cada pregunta tendrá varias posibles respuestas. Un encuestado seleccionará una (y sólo una) respuesta para cada pregunta en una encuesta.

## Objetivos Académicos

- Realizar una aplicación completa en Sinatra.
- Practicar asociaciones de ActiveRecord.
- Practicar el flujo de información en el modelo MVC.

## Actividades

### Modelos

Debes crear 6 modelos/tablas principales, que permitan realizar las siguientes actividades:

- Registrarse como Usuario.
- Como Usuario puedo crear una Encuesta.
- Las Encuestas están compuestas por Preguntas.
- Una Pregunta tiene varias Opciones.
- Como Usuario puedo responder a una Encuesta.

Los usuarios deben iniciar sesión para poder crear y responder a las encuestas.

### Diagramas

Realiza diagramas para representar el flujo de tu aplicación. Existen 2 flujos principales: crear encuestas y responder encuestas. Además de el modulo para usuarios (registrarse, iniciar sesión, etc.)

### Creación de encuestas

Tu proyecto debe permitir crear encuestas desde una sola página. Esto se puede lograr con formas dinámicas. Revisa los siguientes enlaces para ver a que nos referimos:

- [Adding Form Fields Dynamically with jQuery](http://www.mustbebuilt.co.uk/2012/07/27/adding-form-fields-dynamically-with-jquery/)
- [Dynamically Add Input Fields To Form Using jQuery](http://www.infotuts.com/dynamically-add-input-fields-to-form-jquery/)
- Busca más recursos

Recuerda que tu proyecto debe de siempre funcionar, primero crea un MVC (que solo funcione para Cuestionarios de una Pregunta). Posteriormente agrega las funcionalidades necesarias para permitir crear Encuestas con múltiples Preguntas.

### Respondiendo Encuestas

Un Usuario debe responder todas las Preguntas de una Encuesta. Crea validaciones en tus modelos para impedir guardar Encuestas que no tengan todas las Preguntas contestadas.

### Resultados De Encuesta

Crea una página desde la cual el Usuario creador de la Encuesta pueda ver los resultados.

Puedes realizar esto con alguna de las bibliotecas de gráficas siguientes o puedes usar alguna que conozcas:

- [Flot](http://www.flotcharts.org/)
- [Highcharts](http://www.highcharts.com/)
- [C3.js](http://c3js.org/)
- [D3.js](http://d3js.org/). Esta biblioteca es la más complicada de todas.

O si lo prefieres puedes representar las gráficas con simples elementos de HTML. Busca como darle un ancho con porcentaje a un elemento de HTML.


### Características Avanzadas

Piensa que más le podrías agregar al proyecto. Aquí hay algunas ideas:

- Visualización avanzada de encuestas. Que puedas ver como fue cambiando las Respuestas de las Encuestas a través del tiempo.
- Mejorar la interfaz gráfica.
- Permitar preguntas de otro tipo, no sólo preguntas de opción múltiple.

### Éste es un ejemplo de cómo puede quedar tu aplicación:
<center>
  <iframe width="420" height="315" src="https://www.youtube.com/embed/2oj_HJmd6r8" frameborder="0" allowfullscreen></iframe>
</center>
