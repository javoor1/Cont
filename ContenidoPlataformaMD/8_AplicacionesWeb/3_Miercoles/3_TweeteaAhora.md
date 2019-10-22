Este es el segundo paso de la aplicación que hiciste ayer de Twitter.

En esta ocasión vamos a agregar a tu aplicación más funcionalidad para que un solo usuario pueda crear un tweet desde nuestra app, una vez entiendo como funciona esto, podremos hacer que cualquier usuario pueda crear una sesión por medio de Twitter y que cualquiera pueda Twittear desde nuestra app.  

Aprenderás como manejar credenciales de otras aplicaciones y su API.

## Objetivos Académicos

- Conocer más a fondo la API de Twitter
- Crear información utilizando un API

## Actividades

### Ahora si a crear Tweets!

Crea una ruta en la que exista una forma con un input tipo texto. El objetivo es que al enviar la forma, el texto que escribió el usuario se convierta en un tweet.

Por este momento vamos a `harcodear` (escribir de manera directa) la cuenta de la que se crearán los Tweets.

Este es un ejemplo de lo que debe hacer tú ruta.

```ruby
post '/tweet' do
	# Recibe el input del usuario

	# Crea el tweet utilizando la API de Twitter

	# Regresa al usuario el tweet o un mensaje de EXITO o ERROR
end
```

Si tienes problemas revisa la configuración de tu Twitter Client y la configuración de la cuenta de API de donde sacaste tus credenciales. En especifico tus permisos de acceso.   

- [https://dev.twitter.com/apps](https://dev.twitter.com/apps).

### Ahora has lo mismo de manera Asíncrona.

Al igual que en el ejercicio pasado hay que mejorar nuestra interfaz, ya que crear un tweet puede tardar. Incluye javascript para poder crear una petición de AJAX.

En cuanto la forma se envíe deberás de tomar control. Deshabilita los inputs y despliega un mensaje al usuario haciendolo saber que se esta procesando su petición. Finalmente cuando sepas que paso con el tweet despliega un mensaje de "Éxito" o "Error" en el callback de la petición AJAX.

Estos recursos te podrán servir.

- [jQuery .submit()](http://api.jquery.com/submit/)
- [How to disable/enable an element with jQuery](http://jquery-howto.blogspot.mx/2008/12/how-to-disableenable-element-with.html)
