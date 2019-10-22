Como ya hemos explicado en otros ejercicios las formas sirven para muchas cosas, no solamente para crear una cuenta o enviar información al servidor.

En vez de mandar información a un servidor, en este ejercicio vamos a utilizar las formas para manipular elementos del DOM utilizando JavaScript.

En específico vamos a crear una forma que te deje modificar el estilo de tu página.

Éstos son algunos recursos que te servirán para completar este reto.

- [Basics of jQuery Events](http://learn.jquery.com/events/event-basics/) and [Event Handling](http://learn.jquery.com/events/handling-events/), specifically the `submit` event.
- The jQuery [`val()` method](http://api.jquery.com/val/) and [`css()` method](http://api.jquery.com/css/)
- [event.preventDefault](http://api.jquery.com/event.preventDefault/) method provided by jQuery.

## Objetivos Generales

- Utilizar JavaScript para obtener información de una forma.

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8VkdkSkpNdE9UUms)

Te daremos un archivo en el que podrás ver una forma con tres inputs (Selector CSS, Propiedad y Valor)

Lo que deberás lograr es lo siguiente:

- Escribe un selector de CSS (h1, #header, .faded) en el input correspondiente.
- Escribe una propiedad de CSS (color, padding, text-align) en el input correspondiente.
- Escribe un valor para la propiedad (si es color algo como #00f) en el input correspondiente.
- Da click en el submit de la forma y mira cómo mágicamente todo cambia.

La solución de éste problema la deberás poder dividir en éstos pasos:

1. Conseguir los valores de la forma.
2. Pasar éstos valores a una función de jQuery que modificará el DOM.
3. Limpiar los valores de la forma para que pueda utilizarse más veces.
4. Hacer un bind a un evento el cual detona una función que corre los pasos anteriores.

Si tienes problemas pregúntate los siguiente:

- ¿Estoy haciendo el bind bien y al elemento que quiero?
- ¿Realmente los valores que obtengo de la forma son los que quiero y están en el formato correcto?
- ¿La función de jQuery funciona correctamente?

Observa el siguiente video y date una idea de lo que puedes llegar a hacer:

<center>
    <iframe width="420" height="315" src="https://www.youtube.com/embed/scJZ-QNV-38" frameborder="0" allowfullscreen></iframe>
</center>
