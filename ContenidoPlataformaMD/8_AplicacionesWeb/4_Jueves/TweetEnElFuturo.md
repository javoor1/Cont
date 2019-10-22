Vamos a seguir creciendo nuestra aplicación de twitter. En este reto agregaremos funcionalidad para que los usuarios puedan crear un tweet y especificar cuando quieren que se Cree. Por ejemplo tweetea en una hora.

Si no has acabado el los retos anteriores de Twitter, primero acábalos antes de empezar este reto.

Hasta ahora tenemos una aplicación que funciona muy bien desde el front-end pero lo que no esta siendo muy eficiente es la parte del back-end. Ya que para responder una petición se tarda una "eternidad" y esto hace que no puedas recibir otra petición mientras el proceso no termine.

Para resolver este problema utilizaremos lo que se le llama en ingles background jobs. En vez de estar procesando tareas tardadas o costosas en nuestro servidor las enviaremos a una cola de tareas las cuales se procesarán en otro servidor. De esta manera liberamos el servidor para poder recibir otras peticiones.

Utilizaremos [Sidekiq](https://github.com/mperham/sidekiq) que es una plataforma para procesar tareas en segundo plano (framework for background job processing). Esta plataforma utiliza [Redis](http://en.wikipedia.org/wiki/Redis) para poder guardar la información relevante de cada tarea.


- [Un ejemplo de sinatra y Sidekiq](https://github.com/mperham/sidekiq/blob/master/examples/sinkiq.rb)

## Objetivos

- Familiarizarse con Sidekiq
- Comprender como mandar tareas a un segundo plano
- Comprender como mejorar la eficiencia de tu servidor

## Actividades

### Redis y Sidekiq

Agrega a tu Gemfile `sidekiq` y `redis`, luego dentro de `config/environment.rb` agrega sus `requires` respectivos. Como siempre deberás hacer `bundle install`.

Recuerda que cuando levantamos servidores, es importante abrirlos en una nueva ventana/pestaña porque cualquier servidor se queda escuchando peticiones y no podemos hacer uso de esa consola para introducir comandos.

Primero hay que levantar el servidor de Redis de la siguiente manera:

```
$ redis-server
```

Si quieres asegurarte que tu servidor de Redis está funcionando, ejecuta:

```
$ redis-cli ping
```

Ahora necesitamos levantar el servidor de Sidekiq:

```
$ bundle exec sidekiq -r ./config/environment.rb
```


### Tweeteando

Para esta parte esperamos ya tengas el ejercicio de "Ahora Todos Pueden Tweetear" acabado y funcionando. En la tabla de usuarios deberías de estar guardando el `handle` del usuario junto con su `access token`.

Si todo esta listo podrás crear un modelo `TweetWorker`

```
# app/models/tweet_worker.rb

class TweetWorker
  include Sidekiq::Worker

  def perform(tweet_id)
    # tweet = # Encuentra el tweet basado en el 'tweet_id' pasado como argumento
    # user  = # Utilizando relaciones deberás encontrar al usuario relacionado con dicho tweet

    # Manda a llamar el método del usuario que crea un tweet (user.tweet)
  end
end
```

Ahora crea otro método dentro del modelo de usuario llamado `tweet_later`

```ruby
  def tweet_later(text)
    # tweet = # Crea un tweet relacionado con este usuario en la tabla de tweets
    # Este es un método de Sidekiq con el cual se agrega a la cola una tarea para ser
    #
    TweetWorker.perform_async(tweet.id)
    #La última linea debe de regresar un sidekiq job id
  end
```
Como siempre has un intento de ver si todo esta funcionando bien, puedes lograr esto desde la consola?

```ruby
> User.find(1).tweet_later("Acabo de twittear desde una app que yo programe")
```

Como lo explica el comentario en el método de `tweet_later`, este debe de regresar un job ID. Este ID nos servirá para hacer consultas al servidor de Sidekiq preguntando cual es el `status` de la tarea.  

### Front-end

Toda esta lógica complica lo que tenias en el front-end. Ahora tu servidor regresa inmediatamente todas las veces y no sabemos si se realizo la tarea o si sigue pendiente.  

Para arreglar esto y mejorar la usabilidad de tu app crea la siguiente ruta:

```ruby
get '/status/:job_id' do
  # regresa el status de un job a una petición AJAX
end
```

Agrega el siguiente helper a tu aplicación para determinar el status de una tarea.

```ruby
def job_is_complete(jid)
  # Revisa si la tarea se encuentra pendiente
  pending = Sidekiq::ScheduledSet.new
  return false if pending.find { |job| job.jid == jid }
  # Revisa si la tarea se encuentra en la cola
  waiting = Sidekiq::Queue.new
  return false if waiting.find { |job| job.jid == jid }
  # Revisa si la tarea se encuentra en proceso
  working = Sidekiq::Workers.new
  return false if working.find { |worker, info| info["payload"]["jid"] == jid }
  # Si no se cumplió ninguna de las anteriores entonces la tarea ya fue procesada.  
  true
end
```

### Acaba el rompecabezas

Digamos que en este momento ya tienes todas las piezas necesarias para concluir todas las funcionalidades de esta aplicación.

Algún día has vivido esta escena? Una familia en un coche con un niño chiquito sentado en la parte de atrás del auto preguntando

> "¿Ya vamos a llegar?", "¿Ya vamos a llegar?", "¿Ya vamos a llegar?"

Parecido a esta escena funcionará tu app

Cuando un usuario haga submit de un tweet para crearlo por medio de AJAX, deberás de recibir de regreso el ID de la tarea. Con este ID y utilizando `setTimeout` podrás `pinear` el servidor cada `x` tiempo para ver si ya se proceso la tarea. Tu decides que tan frecuentemente quieres revisar el status de la tarea.

Dentro de la ruta `/status/:job_id` o el callback en JS, regresa al usuario algo para hacerlo saber si ya se completo su tarea o sigue pendiente.  

### Programa los tweets para el futuro

Dentro de tu método de `tweet_later` modifica lo necesario para que ahora si puedas programar los tweets para el futuro. Lee la documentación de Sidekiq para aprender como se hace esto:

- [sidekiq wiki](https://github.com/mperham/sidekiq/wiki)

### Extras

Para finalizar necesitamos tener una manera de saber si la tarea no se realizo y si hubo un error. Pregúntate que pasa en Sidekiq cuando una tarea falla? hay algún lugar donde la ponga o una manera de enterarte? o simplemente el servidor trata hasta que tenga éxito?
