## MiniSubmarine Web (Javascript)

El objetivo es crear el juego del submarino en el navegador.

Este ejercicio está dividido en dos partes. La primera es crear el juego web y la segunda hacer del juego una aplicación donde se guarden las puntuaciones obtenidas por cada jugador.

El siguiente video muestra los aspectos que se deben contemplar en esta aplicación:

<center>
  <iframe src="https://player.vimeo.com/video/196771054" width="600" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</center>

Como puedes ver en el video anterior, un usuario podrá registrarse para jugar las veces que el lo deseé. Asimismo, podrá revisar su score del número de submarinos destruidos por ronda. Cualquier usuario podrá revisar el registro de ganadores.

## Objetivos Académicos

- Aplicar HTML, CSS, JavaScript y jQuery para crear una aplicación. Usar Ajax para mejorar la UX.


## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8OFg4SnFUdUlPc28)

En el esqueleto que se ha proporcionado se agregará el código necesario y se realizarán los cambios que consideres para que la aplicación funcione.

### Armando la App

El flujo de tu app debería ser muy parecido a lo siguiente:

- Un jugador visita la app.
- La app pide al jugador que se registre o en su caso ingresar al juego.
- Al registrarse o ingresar, el usuario puede jugar las rondas que quiera.
- El juego arranca al momento de seleccionar 'Play'.
- El jugador tendrá tres oportunidades para destruir dos submarinos, cuando se destruye un submarino entonces el botón seleccionado aparecerá en rojo y cuando se falla aparecerá una 'X'.
- La aplicación declara al jugador como ganador cuando destruye los dos submarinos. Toda la información de submarinos destruidos por ronda es mandada al servidor y el juego queda guardado como concluido.
- El jugador podrá consultar sus puntuaciones en la opción correspondiente.
- Finalmente cualquier usuario podrá consultar la lista de ganadores, la app mostrará esta lista en orden descendente.

### Modelos

Deberás de tener dos modelos, uno para el jugador y otro para los juegos. Un jugador puede tener varios juegos y un juego puede tener solamente un jugador.

### Rutas

Necesitarás como mínimo las siguientes rutas:

- Registrarse al juego
- Ingresar al juego
- Empezar un juego / crear un juego
- Jugar
- Una ruta donde se muestren los resultados de un juego
- Una ruta donde se muestre a los ganadores.
