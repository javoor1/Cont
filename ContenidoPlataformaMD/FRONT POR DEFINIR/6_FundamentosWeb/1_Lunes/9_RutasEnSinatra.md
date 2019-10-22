En este ejercicio intentaremos que comprendas como funciona el flujo de información dentro de las aplicaciones web.

## Objetivos Académicos

- Familiarizarse con el flujo de información entre servidor y browser.
- Conocer como funcionan las rutas

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8eWd2TDBHZ0VaMXM)

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


#### puts como debugeador
Ya habíamos hecho énfasis en que `puts` es un gran debuggeador y en este ejercicio lo utilizaremos para entender el flujo de información de una aplicación. Los programadores utilizan `puts` exactamente para comprender que esta pasando cuando están confundidos. Intentan comprender el valor de variables el un punto de la ejecución o también cuales son los métodos que se están ejecutando. Para ello llenaran de `puts` todo el código.

Esto no es hacer trampa o tirar la toalla o algo que solo hacen los principiantes. Esto es lo que hacen los mejores programadores para encontrar errores o debugear un problema.

Utiliza nuestro esqueleto de Sinatra.

### Rutas y vistas

En tu controlador crea las siguientes rutas:

```
get '/' do
  puts "Este es un GET a (/)"
  puts "Esto es lo que vale Params: #{params.inspect}"
  erb :index # Esto renderea una vista llamada index.erb
end

get '/cool_url' do
  puts "Este es un GET a /cool_url"
  puts "Esto es lo que vale Params: #{params.inspect}"
  erb :get_cool_url  # Esto renderea una vista llamada get_cool_url.erb
end

post '/cool_url' do
  puts "Este es un POST a /cool_url"
  puts "Esto es lo que vale Params: #{params.inspect}"
  erb :post_cool_url  # Esto renderea una vista llamada post_cool_url.erb
end
```

Ahora para que funcionen los controladores deberás crear las tres vistas que utilizarás:

- index.erb
- get_cool_url.erb
- post_cool_url.erb

Agrega títulos a las vistas de manera que puedas diferenciarlas.

Dentro de tu `index view` deberás crear dos formas de HTML que contengan únicamente un campo de tipo texto poniéndole como nombre lo que quieras y un botón de ´submit`. El nombre del campo de texto deberá ser diferente para cada forma.

La primera forma debe de hacer una petición GET a `/cool_url` y la segunda un POST también a `/cool_url`.

Ahora entra a index y revisa en la consola lo que imprimió el servidor. Después utiliza las dos formas y revisa de igual manera en la consola lo que imprimió el servidor.

Te queda más claro como esta funcionando tu aplicación?

### Agrega más campos a la forma de HTML

Que pasa cuando agregas más campos a la forma de HTML, nombra adecuadamente cada uno.

- [Textarea](http://www.echoecho.com/htmlforms08.htm)
- [Radio buttons](http://www.echoecho.com/htmlforms10.htm)
- [Checkbox buttons](http://www.echoecho.com/htmlforms09.htm)
- [Select box](http://www.echoecho.com/htmlforms11.htm)

Observa como cambia el valor de `params` que se imprime en la consola

### Re-Nombrando los campos

Agrega los siguientes campos a la forma del POST. Fíjate en los nombres que les dimos. Puedes inferir como se verá el hash de params?

```html
<input type="text" name="post[title]">
<input type="text" name="post[price]">
<textarea name="post[description]"></textarea>
```

### Tu propio experimento

Crea una lista de dudas sobre Sinatra y el flujo de información de una Aplicación Web. También pueden ser sobre HTTP o sobre HTML y las Formas.

Antes de llamar a un instructor elabora una estrategia para resolver estas dudas y como siempre utiliza `puts` o algún otra forma que se te ocurra. Haz tus preguntas lo más simples posibles.

Antes de correr el programa y ver que resultado arrojan los `puts` que pusiste, intenta adivinar cual será el resultado y compáralo.
