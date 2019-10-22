Vamos a mejorar la experiencia del usuario en nuestra aplicación de Tweets anterior. Aprenderemos como entre el Front y Back podemos darle al usuario una mejor experiencia.

En este momento tenemos una página que carga los últimos 10 tweets de un usuario. Si los tweets de este usuario ya están en la base de datos, el tiempo de carga es mínimo, pero si la app tiene que hacer una petición a la API se puede tardar mucho en cargar. No hay mucho que podamos hacer para que Twitter regrese la petición más rápido.(a menos que seas brother de jack dorsey).

Los usuarios cuando ven que la computadora se esta tardando en responder, se empiezan a poner ansiosos y a frustrarse por no saber que pasa. Esto crea desconfianza y se empiezan a preguntar si el sitio no funciona, o si será el navegador o tal vez la computadora. Nosotros no queremos generar este tipo de pensamientos en el usuario.

## Objetivos Académicos

- Conocer formas de mejorar la experiencia del usuario
- Practicar Ajax

## Actividades

El objetivo de este reto es crear una versión de la app en la cual cuando el usuario entre a la página donde se despliegan los tweets, esta página se cargue siempre rápido.

### AJAX para mejorar la UX

Por lo que hemos descrito existirán dos escenarios cuando el usuario pida los tweets:

- Cuando los tweets están Actualizados
- Cuando los tweets están desactualizados

Cuando el usuario hace click en el botón la ruta deberá contener la lógica para saber si los tweets están actualizados o no. En el caso de que los tweets estén actualizados simplemente despliega en la página dichos tweets.

De lo contrario si los tweets están desactualizados, sigue los siguientes pasos.

- La página deberá simplemente desplegar un mensaje de "Favor de esperar" o un `spiner gif`.   
- La página deberá contemplar desde Javascript, código para que cuando cargue dicha página se cree una petición AJAX para refrescar el cache y traer el resultado de vuelta (esta petición seguramente necesitará utilizar un ruta nueva).
- Al regresar la petición AJAX, deberá devolverte la lista de tweets (No utilices JSON)
- Remplaza esta lista por el mensaje o gif.

### Extras

Intenta con lo que aprendiste crear más páginas que en vez los últimos tweets traigan otro tipo de tweets o puede ser que followers o cualquier otra cosa que se te ocurra.  
