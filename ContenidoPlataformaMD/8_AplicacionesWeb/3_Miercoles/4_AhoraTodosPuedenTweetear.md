En este reto mejorarás la aplicación de Tweetea Ahora y vamos a agregar funcionalidad para que cualquier usuario pueda crear una sesión por medio de Twitter y de esta forma, que puedan crear tweets desde nuestra app. Esta será nuestra primera aplicación en la cual utilizaremos OAuth para autenticar usuarios.

Twitter utiliza la [versión uno de OAuth](http://oauth.net/core/1.0a/). OAuth es difícil y en particular la versión uno por lo que te ayudaremos en el proceso.

- [Diagrama de como funciona OAuth](https://codealab.files.wordpress.com/2015/06/oauth.png)
- [Twitter OAuth Documentation](https://dev.twitter.com/oauth)
- [OAuth Explained](http://www.railstips.org/blog/archives/2009/03/29/oauth-explained-and-what-it-is-good-for/)

## Objetivos Académicos

- Familiarizarse con OAuth
- Crear una aplicación utilizando una API y OAuth
- Crear una app que permita a usuarios crear una sesión por medio de Twitter y después que puedan crear Tweets

## Actividades

A diferencia de nuestras aplicaciones anteriores de Twitter el "access token" y "access token secret" cambiarán dependiendo del usuario que este utilizando nuestra aplicación.

El flujo de OAuth es de la siguiente manera.

- Nuestra app crea un formulario para autenticarse con Twitter
- El usuario hace click en el link para autenticarse
- El usuario es redirigido a Twitter para autorizar a nuestra app, dando sus credenciales
- El usuario es redirigido de regreso a nuestra app ('callback URL')
- Nuestra aplicación verifica que el proceso fue valido.
- Si es valido obtenemos los tokens necesarios del usuario para poder actuar en su nombre


Nosotros en los siguientes pasos te daremos el código necesario para implementar OAuth, pero tu deberás crear todas las demas partes de la aplicación. Crear usuarios y sus sesiones, crear el flujo de las rutas y las vistas necesarias.

Los usuarios no tendrán un password ya que estaremos haciendo como un outsourcing de nuestra autenticación. Por lo mismo realmente no existe diferencia entre registrarse y crear sesión.

Deberás guardar a los usuarios y sus credenciales, esto deberá pasar en la ruta `/auth`, en el código que te daremos encontrarás un comentario especificando que falta esta parte.

Finalmente ya que logres que un usuario cree una sesión utiliza su información para crear Tweets, utilizando lo que habías hecho antes. Asegurate de verificar que realmente se están creando los Tweets en la página de Twitter del usuario.


### Antes de empezar

- En el portal de twitter donde registraste tu aplicación debes de estar seguro de poner valores para website y callback_url. Más adelante veremos que no importa lo que pongamos como callback_url ya que será remplazado pero debes de poner algo.
- Agrega "gem 'oauth'" en el Gemfile y corre bundle
- Agrega "require 'oauth'" en config/environment.rb

### Paso 1: Configuración de ambiente

Primero empezaremos con la parte de configuración. En este caso de las 4 credenciales que teníamos, dos pertenecían a nuestra aplicación y las otras dos a un usuario de Twitter. Las credenciales del usuario ahora serán diferentes para cada usuario que inicie sesión.

Las credenciales de nuestra aplicación por seguridad las pasaremos a un archivo de tipo YAML. Dentro de la carpeta `config` crea el un archivo de nombre (`twitter.yaml`).

Agrega a tu archivo `.gitignore` la siguiente linea: `config/twitter.yaml`. Por ahora no vamos a subir a producción esta aplicación pero es importante mencionar este paso para cuando tengas que hacerlo, no queremos que otras personas tengan acceso a estas credenciales.

Con el siguiente contenido:

Las credenciales deberán ser las de tu app, estas son falsas.

```YAML
TWITTER_KEY: 'NqYms2JRjmrdy4ODyGxOTBBWS'
TWITTER_SECRET: 'vDW5fghjAWqe3DdRgBMNfdtH6w7bnRo1786Dd51DhczZxSmeSW'
```

Después dentro de tu archivo `environment.rb` agrega las siguientes lineas. Estas deberán sustituir a tu configuración anterior.

```ruby
env_config = YAML.load_file(APP_ROOT.join('config', 'twitter.yaml'))

env_config.each do |key, value|
  ENV[key] = value
end

```

###  Paso 2: Creando Helpers

En este paso crearemos tres métodos que son importantes.

- El primero crea una instancia de un OAuth::Consumer
- El segundo genera la url de nuestra app
- El tercero pide un token a la API de Twitter

Agrega un archivo dentro del directorio helpers con los siguientes métodos: `oauth.rb`

```ruby

def current_user
  if session[:user_id]
    @current_user ||= TwitterUser.find_by_id(session[:user_id])
  end
end

def logged_in?
  !current_user.nil?
end

def oauth_consumer
  raise RuntimeError, "Debes configurar una TWITTER_KEY y TWITTER_SECRET en tu yaml file y environment." unless ENV['TWITTER_KEY'] and ENV['TWITTER_SECRET']
  @consumer ||= OAuth::Consumer.new(
    ENV['TWITTER_KEY'],
    ENV['TWITTER_SECRET'],
    :site => "https://api.twitter.com"
  )
end

def host_and_port
    # En este método creamos la base de nuestra 'calback url' de la app
    # para funcionar tanto local como en producción
    # Esta línea toma de una variable de la petición (creada por sinatra) la url.  
    host_and_port = request.host
    # Si estamos desarrollando localmente necesitamos agregar el puerto
    host_and_port << ":#{request.port}" if request.host == "localhost"
    host_and_port
end


def request_token

  unless session[:request_token]

    # A una instancia de OAuth::Consumer llamamos el método get_request_token
    # Esto hace una petición http a la API de Twitter mandando como argumento la 'calback url' y las 'consumer keys'
    # La petición nos regresa un 'request_token'
    # Este token contiene una url donde se llevará acabo la autenticación del usuario
    # Esta url la guardamos en la sesión para no perderla.
    session[:request_token] = oauth_consumer.get_request_token(
      :oauth_callback => "http://#{host_and_port}/auth"
    )
  end
  session[:request_token]
end

```

Ya que vamos a implementar OAuth en este momento, necesitamos configurar una `Callback URL` para Twitter sepa a donde redireccionar a los usuarios una ves que los autentifica.Cuando estamos utilizando `localhost` esta URL se especifica dentro de el `request token`. El siguiente paso es crear un helper donde podrás entender de que estamos hablando y este contendrá gran parte de la funcionalidad.


### Paso 2: Juntando todo en el Controller

Finalmente agrega las siguientes rutas a tu controlador y modifica lo necesario para que todo funcione:

```ruby

get '/sign_in' do
  # El método `request_token` es uno de los helpers
  # Esto lleva al usuario a una página de twitter donde sera atentificado con sus credenciales
  redirect request_token.authorize_url(:oauth_callback => "http://#{host_and_port}/auth")
  # Cuando el usuario otorga sus credenciales es redirigido a la callback_url
  # Dentro de params twitter regresa un 'request_token' llamado 'oauth_verifier'
end

get '/auth' do
  # Volvemos a mandar a twitter el 'request_token' a cambio de un 'access_token'
  # Este 'access_token' lo utilizaremos para futuras comunicaciones.   
  @access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
  # Despues de utilizar el 'request token' ya podemos borrarlo, porque no vuelve a servir.
  session.delete(:request_token)

  # Aquí es donde deberás crear la cuenta del usuario y guardar usando el 'access_token' lo siguiente:
  # nombre, oauth_token y oauth_token_secret
  # No olvides crear su sesión
end

  # Para el signout no olvides borrar el hash de session

```
