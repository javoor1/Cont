Las formas en HTML es lo que nos deja enviar información al servidor, son mucho más que una manera para crear sesión o para suscribirse a un newsletter.

Cuando utilizamos formas de HTML necesitamos estar seguros que la información que recolectaran sea valida. Por ejemplo si pedimos la edad de una persona, el valor tiene que ser numérico, también debe de ser positivo y seguramente no puede ser mayor a 150 por poner un año.

Existen muchos lugares donde podemos hacer validaciones, por ejemplo en el modelo o la base de datos como lo hemos hecho. En este ejercicio vamos a realizar validaciones del lado del cliente antes de que se envíe la forma.

Para esto necesitaras los siguientes recursos:
- [The RegExp object in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp)
- [Basics of jQuery Events](http://learn.jquery.com/events/event-basics/)
- [Event Handling](http://learn.jquery.com/events/handling-events/)

## Objetivos Generales

- Aprender a realizar validaciones del lado del cliente
- Practicar el uso de Regex junto javascript
- Practicar con el uso de eventos en javascript

## Actividades

Para este ejercicio deberás escribir validaciones con javascript para validar una forma de HTML.

### Configura tus archivos

Hasta ahora te hemos dado muchas veces esqueletos que ya funcionan, esta vez tu crearás el tuyo propio. Deberás tener tres archivos (HTML, CSS y JS).

Lo único que deberá tener tu HTML es una forma de nombre `sign_up` con un input para emial, otro para password y un botón para enviar la información. Adicionalmente debes crear un `div` donde muestres los errores al usuario en caso que te entregue información invalida.  

### Valida la Forma

La siguiente imagen muestra la forma donde todos los errores están fallando:

![alt text](https://codealab.files.wordpress.com/2015/06/screen-shot-2015-06-18-at-4-44-55-pm.png)

Esto es lo que debes de lograr, tu tarea es escribir el javascript necesario para que no se envíe la forma con información invalida y cuando esto suceda mostrarle al usuario cuales son sus errores.

Debes revisar las siguientes validaciones:

- El email debe de seguir un patrón valido.
- El password debe de contener como mínimo 8 caracteres.
- El password debe de contener al menos una letra mayúscula
- El password debe de contener al menos un carácter numérico.  

Si alguno de las validaciones falla la forma no deberá enviarse y deberás desplegar al usuario los errores. 
