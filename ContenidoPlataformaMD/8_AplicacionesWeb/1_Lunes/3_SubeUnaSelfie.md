Que sería de la Web si no pudiéramos subir archivos o compartir fotos???

En este ejercicio vamos a aprender y a crear una app donde se pueda subir una fotografía o imagen. Esta vez tu decidirás que tipo de app de fotos quieres replicar o si quieres crear la tuya propia.

Algunas opciones que existen:

- Instagram
- Flickr
- Facebook
- Path
- Tumblr

## Objetivos Académicos

- Aprender a configurar una aplicación para que tenga la capacidad de subir imágenes

## Actividades
####[Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8eWd2TDBHZ0VaMXM)

Lo primero que deberás hacer es crear una simple app de prueba en la que puedas subir imágenes, una vez que conquistes este reto podrás añadir toda la demás funcionalidad a tu app para que sea exitosa.

### TIPS para tu app

Una vez que ya sabes subir fotos vuélvete loco y cera un gran app:

- Incorpora usuarios, muchas apps dejan ver al público general las fotos pero para subir una foto necesitas tener una cuenta
- Muchas apps de foto incorporan el concepto de album
- Utiliza el carousel de imágenes que hiciste en uno de los retos.
- Utiliza jQuery sortable para dejar a los usuarios re-ordenar sus imágenes.
- Que otras cosas se te ocurren?
- Subir fotos por medio de AJAX tiene una alta dificultad, déjalo para otro día.

### Gemas para Cargar Archivos

Existen dos gemas las cuales utilizaremos que nos ayudarán a crear esta funcionalidad.

- [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)
- [MiniMagick](https://github.com/minimagick/minimagick)

Esta es la documentación para utilizar [CarrierWave con MiniMagick](https://github.com/carrierwaveuploader/carrierwave#using-minimagick).

### Formas de HTML para Cargar Archivos

Para poder subir un archivo desde una forma de HTML deberás especificar dos cosas. La primera es que tu `input` debe de ser de tipo `file` y la segunda es que como atributo de tu `form tag` deberás definir `enctype="multipart/form-data"`. Verifica que estas envíando un `post` y no un `get`. Revisa el siguiente ejemplo.

```html
<form method="post" enctype="multipart/form-data" action="/upload">
  <input type="file" name="filename">
</form>
```

### Paso a Paso

#### 1. Instalar Image Magick http://www.imagemagick.org/

Tu computadora debe de tener instalado Image Magick, asuegurate de ello corriendo el siguiente comando:

```
convert -version
```

#### 2. Gemfile
```ruby
gem 'carrierwave'
gem 'mini_magick'
```

#### 3. Configuración de tu Ambiente

Busca el archivo que contiene las configuraciones de ambiente (environment configurations).

Una vez que especificamos y cargamos las gemas necesarias, necesitamos hacer un `require` de las librerías necesarias.

Adicionalmente hay que estar seguros de que la carpeta de unloaders esta contemplada dentro de la configuración de nuestra app. Dentro de esta carpeta existirán configuraciones especificas de cada uploader de carrierwave.

Finalmente aquí es donde se define la configuración global de Carrierwave.

```ruby
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'mini_magick'

# Revisa que el folder de uploaders este contemplado el la configuración del app
Dir[APP_ROOT.join('app', 'uploaders', '*.rb')].each { |file| require file }

#Configuración global de todos los uploaders de CarrierWave
CarrierWave.configure do |config|
  config.root = APP_ROOT + 'public/'
end
```

#### 4. Configuración

Muchas gemas requieren de ciertas configuradas, incluye el siguiente archivo `app/uploaders/photo_uploader.rb`.

Investiga que tiene que tener este archivo.

```ruby
class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick

  # Que tipo de strorage usará este uploader

  def store_dir
    # Como y donde guardar el archivo ...
  end

  storage :file
  # Versiones del archivo ...

  #Que extensiones vas a aceptar
end
```


#### 5. Tu Modelo

```ruby
class Photo < ActiveRecord::Base
  validates :photo, presence: true

  # El segundo parámetro es el nombre del uploader que se genera el paso 4
  mount_uploader :photo, PhotoUploader
end
```

#### 6. Tu Controlador

```ruby
post '/upload' do
  @photo = Photo.new(params[:photo])
  @photo.save!

  redirect '/'
end
```


#### 7. Tu Vista

```html
<h1>Welcome to Selfie!</h1>

# Verificar que sea post, y que tenga el atributo enctype
<form method="post" enctype='multipart/form-data' action="upload">
  # Verificar que name corresponda al nombre/campo del modelo
  <input type='file' name='photo[photo]'>
  <br/>
  <input type='submit' value='Upload!'>
</form>

<ul>
  <% @photos.each do |photo| %>
    <div>
      <img src="<%= photo.photo_url(:thumb) %>">
    </div>
  <% end %>
</ul>
```
