Sinatra es un framework para aplicaciones web de software libre y código abierto escrito en Ruby.

## Aplicación Web Básica con Ruby y Sinatra

Crearemos el básico "hello world" al estilo de una app para saludar a un usuario.

#### Setting up Sinatra

1) Instalaremos la gema de Sinatra con `gem install sinatra` en la terminal.

```Ruby
$ gem install sinatra
```

2) Crearemos el directorio `hello_sinatra` con `mkdir` para este proyecto.

```Ruby
$ mkdir hello_sinatra
```

3) Crearemos el archivo de ruby `hello_sinatra.rb` dentro del directorio que acabamos de crear.

4) Agregaremos la siguiente línea de código `require "sinatra"` en el archivo para poder usar la gema.

#### Imprimiendo Hello, World!

La idea es que la app imprime "Hello, world" cuando naveguemos usando la ruta raíz, es decir el nombre del dominio `http://your_domain.com/` sin ninguna ruta al final.

5) Para realizar lo anterior, llamaremos al método `get` que corresponde a la solicitud `HTTP` que en este momento queremos. Con el método `get` se están enviando datos a través de la URL. Para conocer más sobre los métodos `get` y `post` puedes checar el siguiente **[link](http://www.w3schools.com/tags/ref_httpmethods.asp)**.

6) Posteriormente pasaremos la ruta como un argumento, en este caso "/".

```Ruby
require "sinatra"

get "/" do
  "Hello, world!"
end
```

El método `get` tomará un bloque de código y el valor retornado del bloque es enviado como la respuesta al web browser. Usualmente esto será un string conteniendo código HTML.

#### Testeando la App

6) Probaremos la app en el browser corriendo el archivo `hello_sinatra.rb` usando la palabra reservada `ruby`. Esto lanzará un servidor local usando el puerto 4567 de tal manera que podamos cargar la app en el browser.

```Ruby
$ ruby hello_sinatra.rb
```

7) En el browser navegaremos a `localhost:4567` para checar nuestra app.

Si todo va bien, has construido una sencilla web app.

## Ejercicio - Vocales en tu nombre

1) Crea una sencilla web app usando Sinatra y Ruby que imprima tu nombre y el número de vocales que tiene el nombre.

2) Para esto, define el método `count_vowels` que recibe como parámetro `name`y regresa el mensaje `"My name is Carlos Monsanto and it has 5 vowels"`. Recuerda sustituir el nombre y el número de vocales en el string que regresa el método.


>NOTA: Usa la terminal de tu equipo y sublime text para crear este programa de sinatra.
