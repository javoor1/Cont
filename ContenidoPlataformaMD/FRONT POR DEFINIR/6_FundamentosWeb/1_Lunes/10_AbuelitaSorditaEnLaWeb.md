**Bienvenido al mundo del Desarrollo Web**

Acabando este ejercicio habrás hecho tu primera WebApp.

Este ejercicio es igual al que hicimos de Abuelita Sordita pero ahora desde un browser.

En toda la siguiente fase utilizaremos **[Sinatra](http://www.sinatrarb.com/)**, un framework para crear aplicaciones web escrito en Ruby. Sinatra es como Rails pero más básico y sin tantas configuraciones por default, buscando que puedas configurarlo a tu conveniencia.

Creamos en Sinatra un esqueleto similar a las convenciones que sigue Rails para que te vayas familiarizando con ellas, pero al ser más básico podrás comprender su funcionamiento de manera más fácil. Dentro de la estructura podrás ver que sigue el diseño arquitectónico MVC. Te recomendamos intentar descifrar para qué sirve cada archivo o carpetas de archivos.

Nuestro esqueleto de Sinatra utiliza `postgres` como base de datos, si tienes algún problema con ella pide ayuda a un instructor.

## Objetivos Académicos

- Comprender cómo funciona un forma de HTML
- Comprender el flujo básico de información en una Aplicación Web

## Actividades

#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8MldZRlA2NjhPNjQ)

### Correr nuestra app

Para poder correr nuestra aplicación debemos correr `bundle` para instalar las gemas necesarias.

Después de eso necesitamos ejecutar el siguiente comando para levantar nuestra aplicación.

```
$ shotgun config.ru
```

Al utilizar este comando estás arrancando un mini servidor en tu computadora donde estará cargada tu aplicación.

Sinatra y Rails son frameworks basados en [Rack](http://rack.github.io/), una interfaz para servidores web. Por lo tanto en Sinatra como en Rails el archivo de entrada es `config.ru`, `.ru` significa rackup.

En este momento ya puedes visitar tu aplicación en el browser.

- [http://localhost:9393](http://localhost:9393)

`localhost` se refiere a un Hostname que apunta a una IP local en la computadora `(127.0.0.1)` y Sinatra utiliza el puerto `9393` donde levanta el servidor.

## Hagamos que la abuelita hable

Visita la siguiente url: [`http://localhost:9393/?abuelita=hola`](http://localhost:9393/?abuelita=hola)

Fíjate cómo el parámetro que pasamos en la URL como `abuelita` después del `?` aparece desplegado en la página. Intenta buscar dónde en el código se encuentra esa lógica. Como tip abuelita es una variable: `abuelita=hola`.

Cuando en una URL encuentres un `?` lo datos siguientes se les llama `query string`. Este texto contiene diferentes parámetros que serán enviados dentro de la petición de HTTP.

Ahora regresa al browser, recarga la página y utiliza la forma de HTML para enviar un texto. ¿Ahora qué pasó? ¿Puedes descifrarlo?

Dentro de la vista, revisa el contenido del `form` y fíjate en los input's y sus atributos.

Regresa al controlador: `app/controllers/index.rb` busca y entiende cómo funciona esta nueva lógica. Ahora modifica esta lógica para que tu aplicación responda como el ejercicio de Abuelita Sordita de la primera fase. Seguramente vas a querer que tu respuesta regrese a la url de la página principal: [`http://localhost:9393/?abuelita=foobar`](http://localhost:9393/?abuelita=foobar).

Lee la documentación de Sinatra para ver si encuentras la manera de llevar a cabo esta última petición.

- [Sinatra Browser Redirect](http://www.sinatrarb.com/intro#Browser%20Redirect)

### Nota
No será necesario que agregues la funcionalidad de contar cuando le dices a la abuelita `BYE == 3`, ya que cada vez que mandamos el formulario con el input del usuario, estamos haciendo una petición `POST` al servidor.
Sólo haz que cuando detecte el string BYE, la abuelita se despida.
