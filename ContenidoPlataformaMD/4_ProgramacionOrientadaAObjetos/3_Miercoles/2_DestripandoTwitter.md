Nos vamos a meter a las entrañas de la cuenta de twitter de una persona famosa.

Crearemos un programa que obtenga el HTML de una cuenta de Twitter, extraiga información relevante y la despliegue en la consola.

En un ejercicio anterior habíamos representado la información paralelamente en CSV-land y Ruby-land.

En este ejercicio haremos algo parecido con HTML (HTML-land <=> Ruby-land). Esta vez lo que vamos a hacer es convertir la infomación que nos interesa de un archivo de HTML en objetos de Ruby para usarlos dentro de nuestro programa.

## Objetivos Académicos
- Familiarizarse con HTML y sus elementos.
- Conocer la función de las clases y id's dentro del HTML.
- Parsear documentos de HTML.


## Actividades

### Paso 1: Guardar una página de HTML

Copia la url de tu cuenta de Twitter favorita (ej. [https://twitter.com/CH14_](https://twitter.com/CH14_))

Desde la consola utiliza el siguiente comando para salvar el HTML en un archivo:

```
$ curl `url` > twitter_account.html
```

Abre el archivo que crea el comando anterior y échale un ojo.


### Paso 2: Nokogiri

Vamos a usar la gema [Nokogiri](http://www.rubydoc.info/github/sparklemotion/nokogiri) para parsear el archivo de HTML. Recuerda hacer `require` para poder usar las funciones de Nokogiri.

La siguiente línea usa Nokogiri para convertir el archivo de HTML del paso anterior a un objeto de Ruby de tipo ??. Ejecútala desde irb y fíjate que tipo es.

```
irb> doc = Nokogiri::HTML(File.open('twitter_account.html'))
# ¿Qué clase tiene doc ?
```

Del siguiente código, la primera línea es un método de Nokogiri que utiliza [CSS selectors](http://www.w3schools.com/cssref/css_selectors.asp) para encontrar elementos específicos dentro del HTML. Modifica la parte del selector para buscar diferentes elementos en el archivo.

```
irb> profile_name = doc.search(".ProfileHeaderCard-name > a")
irb> profile_name.first.inner_text
```

Para este momento ya deberías entender como se usan las clases y los id's dentro del HTML y CSS.

No tengas miedo de jugar con ellos. Puedes abrir el archivo del paso 1 en Chrome y utilizar el `Inspector` para husmear en su estructura.

Compara los elementos de HTML contra los objetos de Nokogiri (HTML-land <=> Nokogiri-land).


### Paso 3: Con lo que aprendiste crea tu programa

Toma como ejemplo el siguiente mock-up. Espero lo hagas mejor, no te limites:

```
$ ruby twitter_scrapper.rb
Username: Chicharito Hernandez
----------------------------------------------------------------------------
Stats: Tweets: 734, Siguiendo: 298, Seguidores: 4,95M, Favoritos: 70
----------------------------------------------------------------------------
Tweets:
  30 de mar.: Somos futbolistas unidos por una gran causa. Entendamos juntos al autismo @iluminemosazul https://www.youtube.com/watch?v=g3umuOWdMyA … #Iluminemosdeazul
  Retweets:862, Favorites:1,6K

  30 de mar.: Felicidades churuuuuuu @SergioRamos que la pases muy bien!!!  #top pic.twitter.com/ulhTMRk38V
  Retweets:2,6K, Favorites:5,3K

  29 de mar.: Fe y confianza!!!... Muchísimas gracias por el gran apoyo en LA!... #blessed pic.twitter.com/oOiEmYhKQt
  Retweets:3,3K, Favorites:7K
```

Utiliza el siguiente esqueleto para armar tu programa:

```ruby
class TwitterScrapper
  def initialize(url)
  end

  def extract_username
  end

  def extract_tweets
  end

  def extract_stats
  end

end
```

Piensa que otras clases ayudarían a que tu programa quede mejor organizado y siguiendo los principios de OOP.


### Paso 4: Haz dinámico tu programa

Mejora tu programa para que se le pueda pasar la url de una cuenta de twitter desde la consola. Como en el siguiente ejemplo:

```
$ ruby twitter_scrapper.rb https://twitter.com/El_Brody
Username: Jorge Campos
----------------------------------------------------------------------------
Stats: Tweets: 7, Siguiendo: 1,128, Seguidores: 21.7K
----------------------------------------------------------------------------

...
```

Para esto necesitarás la librería `open-uri` para traer la página web dinámicamente.

```ruby
require 'open-uri'

html_file = open('https://twitter.com/El_Brody')
puts html_file.read
```
