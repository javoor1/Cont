Sabes lo que es un API (Application Programming Interface)?

Un API es una "librería" creada para poder comunicarse con un software en particular, de manera sencilla. Normalmente esta librería contiene funciones, especificaciones y procedimientos que te permites comunicarte con un software en particular para recibir servicios del mismo.

Un ejemplo muy sencillo es lo que lograremos con este reto. Crearemos una aplicación a la cual al darle un "Twitter Handle" regrese una lista de los últimos tweets de esa cuenta. Para ello nos comunicaremos con Twitter utilizando su API.  

El API de Twitter esta basada en OAuth esta será la primera vez que utilices este protocolo. OAuth es un protocolo de auntenticación que permite a usuarios poder aprobar a aplicaciones para actuar por ellos sin tener que compartir su password. En esta app realmente no llegaremos hasta este paso pero en un siguiente reto lo harás.

- [Auth-based application](https://dev.twitter.com/oauth/overview/faq)

## Objetivos Académicos

- Familiarizarse con el concepto de API
- Familiarizarse con el protocolo OAuth
- Utilizar la API de Twitter

## Actividades

### Paso 1: Configuración de la API de Twitter

Agrega el gem de Twitter a `Gemfile` y lee la documentación para entender como llevar a cabo la configuración.

- [Twitter gem](http://www.rubydoc.info/gems/twitter)

```ruby
gem 'twitter'

```

La configuración te pedirá que registres tu aplicación para obtener un API key y un API secret. Entra a la siguiente ruta para hacerlo. Para dar de alta la aplicación te pedirán un sitio web y una Calback_URL, por ahora estas dos pueden ser lo que tu quieras, pero no las dejes vacías. Cuando queramos implementar un "Log in via Twitter" entonces si necesitaremos una Calback_URL, por ahora no te preocupes.

- [https://dev.twitter.com/apps/new](https://dev.twitter.com/apps/new).

Una vez que crees tu aplicación, la pagina te llevará a un panel de configuración. De este panel podrás obtener cuatro keys que necesitarás para configurar un "Twitter Client".

- Consumer Key
- Consumer Secret
- Access Token
- Access Token Secret

Ahora si tienes todo lo necesario para crear un "Twitter Client". Para verificar que todo funciona entra a la consola e intenta crear un tweet.

Estos son algunos pasos que no debes de olvidar. El primero es hacer un `require 'twitter'` y configurar la gema en tu archivo `environment.rb`.

Por ahora esta bien que tengas esa configuración dentro de tu archivo `environment.rb`, en el momento que subas a producción una de estas aplicaciones lo que se hace para que nadie tenga acceso a tus keys es: crear un archivo `yaml` y hacer load del mismo en el `environment.rb` y finalmente agregar el archivo `yaml` en tu archivo `.gitignore`. De esta manera no harás publica tu información.

Haz una prueba de que las peticiones a Twitter funcionan antes de seguir adelante.

### Paso 2: Controladores y Vistas

Deberás crear dos simples vistas. El `index` donde solamente habrá una forma donde se pueda capturar el "Twitter Handle" y otra donde muestres una lista de los tweets relacionados a dicho "Twitter Handle".

Para ello deberás tener las siguientes rutas:

- Un `GET` ('/') para el `index`
- Un `POST` ('/fetch') a donde enviaras el "Twitter Handle" y el cual hará un redirect
- Un `GET` ('/:handle') el cual contendrá toda la lógica y desplegará los tweets


### Paso 3: Modelos

Tu aplicación debe de contemplar dos modelos `TwitterUser` y `Tweets`. El primero será para guardar los "Twitter Handles" y el otro para guardar los tweets. Un `TwitterUser` debe de tener muchos `Tweets` y un `Tweet` solamente debe de estar relacionado con un `TwitterUser`.

### Paso 4: Crea un cache

Seguramente tu app esta muy lenta ya que las peticiones al API pueden tardar, pero hay una manera de mejorar esto.

Básicamente un [cache](https://en.wikipedia.org/wiki/Cache_(computing)) es un componente que guarda datos para hacer más rápidas las futuras peticiones de los mismos.

Crearemos un cache con los últimos tweets del usuario para que tu app sea lenta únicamente la primera vez que haces una petición.


Utiliza el siguiente código y pseudocodigo para llevar a cabo esta tarea.

```
get '/:username' do
  # Se crea un TwitterUser si no existe en la base de datos de lo contrario trae de la base al usuario.

  if # La base de datos no tiene tweets?  
    # Pide a Twitter los últimos tweets del usuario y los guarda en la base de datos
  end

  # Se hace una petición por los ultimos 10 tweets a la base de datos.
  erb :tweets
end
```

Ahora si te das cuenta tenemos nuestra app no funciona del todo bien. Que pasa si ya existen tweets nuevos?

Tu app siempre regresa lo que se guardo la primera vez en la BD. Crea un método que especifique si no hay tweets en la base de datos o si los tweets estan desactualizados y en base a el vuelve a hacer la petición. Este método deberá ser parte de tu modelo.   

```
get '/:username' do
  # Se crea un TwitterUser si no existe en la base de datos de lo contrario trae de la base al usuario.

  if #Método que regresa true si los tweets estan desactualizados
    # Pide a Twitter los últimos tweets del usuario y los guarda en la base de datos
  end

  # Se hace una petición por los ultimos 10 tweets a la base de datos.
  erb :tweets
end
```

La lógica de que es un tweet actualizado puede ser difícil de definir. Discute con tu pareja pero no se compliquen por ahora mucho, ya habrá tiempo para implementar la mejor solución.
