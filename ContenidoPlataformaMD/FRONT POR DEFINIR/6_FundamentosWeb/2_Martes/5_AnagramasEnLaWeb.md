Vamos a crear nuestra primera aplicación web utilizando una base de datos!!!

Recuerdas el ejercicio que hiciste anteriormente sobre anagramas. Ahora en vez de hacerlo desde la consola vamos a hacerlo ya como una aplicación web.

Tu aplicación aceptara a través de una forma de HTML una palabra y regresará una lista de anagramas.  

# Objetivos Académicos

- Familiarizarse con como funcionan las formas de HTML
- Comprender la diferencia de los métodos básicos de HTTP (GET, POST)
- Comprender el concepto de MVC aplicado a aplicaciones web

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8SnVaRFlFTjZOdEk)

Utiliza el esqueleto de Sinatra que te damos.

## Crea una Forma de HTML

Antes de empezar a crear los anagramas vamos crear una forma de HTML para recibir del usuario una palabra.

Para poder correr nuestra aplicación debemos correr `bundle` para instalar las gemas necesarias.

Después de eso necesitamos ejecutar el siguiente comando para levantar nuestra aplicación.

```
$ shotgun config.ru
```

Ya con el servidor corriendo podrás visitar las siguientes urls. La primera página contendrá un titulo que dice: `Welcome to Anagrams!`.  

- [http://localhost:9393](http://localhost:9393)
- [http://localhost:9393/roma](http://localhost:9393/roma)

Visita el controller index: `app/controllers/index.rb`, intenta comprender como funciona el código que esta ahí adentro. Si se te complica después de haber discutido con tu pareja pregúntale al instructor.

Ahora si, crea una forma de HTML dentro de la vista index: `app/views/index.erb`. Esta forma deberá hacer un `post` a la acción `/new_word` del controlador index, con un input con el atributo de name `user_word`.

Si hiciste todo correcto al enviar la forma, esta deberá llevarte a la vista de `word` y desplegar la palabra que enviaste en la forma.

## Crea los Anagramas

Ahora necesitamos crear una lista de anagramas según la palabra que nos den en la forma.

### Crea la base de datos y una tabla

Para nuestra app vamos a necesitar crear en la base de datos una tabla que contenga un diccionario de palabras de las cuales sacaremos los anagramas.

Para esto vamos a necesitar crear el modelo `Word` y la migración `create_words`. La migraciones son archivos que modifican la base de datos.  

```
$ rake generate:model NAME=Word
$ rake generate:migration NAME=create_words

```

Estos comandos son llamados `rake tasks` puedes ver como están definidos en el archivo llamado `Rakefile`.

Dentro de tu migración deberás especificar a la base de datos que columnas contendrá tu tabla. Crea una columna para las palabras y te recomendamos crear otra columna donde deberás guardar la versión `canonical` de la palabra.

Después de haber creado el modelo y la migración hay que crear la base de datos y correr la migración.

```
rake db:create
rake db:migrate

```

#### ActiveRecord y la consola
Para poder revisar y manipular nuestra Base de Datos, recuerda que podemos hacer uso de ActiveRecord, para eso fue creado. Con el comando `rake console` accedemos a la consola desde donde podremos ejecutar los métodos que ActiveRecord nos ofrece.

Si en algún momento tienes problemas con tu base de datos puedes usar el siguiente comando para borrar la base de datos y empezar de cero. CUIDADO!!!

```
rake db:drop

```

### Importar un diccionario

Ahora necesitamos un diccionario y por suerte tu computadora Mac tiene uno. Corre este comando para copiar el diccionario a tu escritorio.

El segundo argumento de este comando es el folder de destino, intenta cambiar la ruta para que copie el archivo directamente a la carpeta de tu applicación.

La tilde `~` en mac la puedes escribir presionando `alt ñ`.

```
 cp /usr/share/dict/words  ~/Desktop

```






Una vez que tengas el archivo `words` dentro de la carpeta de tu aplicación necesitamos crear un programa dentro de `db/seed.rb` que lea el diccionario y cree por cada palabra una entrada en nuestra tabla `Words` en la base de datos y rellene la segunda columna con su versión `canonical`.

Para facilitar el proceso de crear la versión `canonical` agrega a tu modelo un método parecido al que usaste en el ejercicio anterior de anagramas.

Una vez que quieras ejecutar el código de `db/seed.rb` deberás correr la siguiente `rake task`.

```
rake db:seed
```

### Crea una lista de anagramas

Dentro de tú modelo `Word` deberás crear un método que utilizando la base de datos genere una lista de anagramas para una palabra

Utiliza este método dentro de tu controlador y despliega la lista en la vista.

## Partials

Ahora dentro de la vista de `word` estaría bueno tener una forma de HTML para poder volver a enviar otra palabra.

La forma de HTML es idéntica a la que creaste en el index. Para seguir el principio DRY crea una vista que contenga esta Forma de HTML y que puedas reutilizar en los dos lugares.

A estas vistas reutilizables se les llama `partials` y por convención en Rails empiezan con un `_`.

Revisa el siguiente link para entender como realizar esta actividad.

- [How do I render partials?](http://www.sinatrarb.com/faq.html#partials).
