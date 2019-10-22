## Modelo - Vista - Controlador

Recordemos el patrón modelo-vista-controlador:

```Ruby

              Actualiza						   Acción de Usuario
         <----------------					   <---------------
Modelo 			              Controlador 							 Vista
        ----------------->					    ---------------->
               Notifica							   Actualiza

```

## Creando la Estructura de directorio básica MVC en Sinatra

Para nuestra aplicación construiremos una estructura básica de sinatra basada en mvc.

```Ruby

|- db
|- models
|- views
|----- app.rb
|----- Gemfile
|----- Gemfile.lock
|----- Rakefile

```

#### Gemfile

Este archivo contiene una lista de todas las gemas necesarias para correr la aplicación. La gema `bundler` nos permite acceder a un comando en la terminal: `bundle install`. Bundler buscará en Gemfile e instalará la gema, así como las dependencias de la gema para esta aplicación.

#### Directorio Models

`Models` representa el componente "M" del paradigma MVC.

Este directorio contiene la lógica detrás de nuestra aplicación. Los archivos dentro de este directorio representan un componente de la aplicación, como Survey, Question o Answer. Cada archivo en `models` contiene una diferente clase. Por ejemplo, survey.rb contendría una clase llamada Survey.

#### Directorio Controllers

`Controllers` representa el componente "C" del paradigma MVC.

Este directorio contiene las acciones que controlarán la aplicación, generalmente los controladores representan la interface y el flujo de nuestra aplicación.

En esta aplicación nuestro controlador lo llamaremos app.rb y estará en el directorio raíz del proyecto.

Cuando un usuario hace una solicitud a un servidor para cargar la aplicación, la solicitud es recibida y procesada por el controlador En ese momento es necesario una acción del controlador para aceptar la solicitud y responder con el HTML apropiado.

#### Directorio Views

`Views` representa el componente "V" del paradigma MVC.

Este directorio contiene el código que será desplegado en el browser. Las vistas representan como se verán las cosas cuando sean desplegadas en la aplicación.

En Sinatra se usa la extensión `.erb` en vez de `.html` para los archivos de vistas.

#### Directorio de Base de Datos

Este directorio contiene tres elementos: un directorio de migración `migrate`, el esquema de la base de datos `schema.rb` y la base de datos `*.sqlite3`. El directorio `migrate` contiene todos los archivos de migración de la base de datos, las migraciones sirven para hacer cambios en la base de datos, levantar las tablas y su correspondiente lógica. El esquema `schema.rb` es la representación de la estructura actual de la base de datos, asimismo sirve como una referencia acerca de sus campos.

# Usuarios Básicos En Sinatra

Vamos a crear una parte del CRUD `Create Read Update Delete` para los usuarios de nuestra aplicación.

1) Empezaremos por crear el folder de nuestra aplicación, llámala `users_app`.
2) Dentro de tu aplicación crea un archivo con el siguiente nombre: `Gemfile`. Éste archivo contendrá las gemas necesarias que nos ayudarán con el desarrollo de nuestra aplicación. Una gema es una librería de código que se encarga de hacer o resolver una funcionalidad específica. Dentro de tu archivo agrega el siguiente código:

  ```ruby
  source 'https://rubygems.org'

  gem 'sinatra'               # Sinatra framework
  gem 'activerecord'          # ActiveRecord ORM
  gem 'sinatra-activerecord'  # Extends Sinatra with methods and Rake tasks
  gem 'sqlite3'               # SQLite Database
  gem 'rake'                  # Execute tasks and dependencies

  ```

3) Una vez que tengas listo tu archivo, ve a la terminal (consola) y ejecuta:

  ```sh
  $ bundle install
  ```
Este comando ejecuta nuestro Gemfile e instala las gemas en nuestra computadora, además de crear (automáticamente) un archivo llamado `Gemfile.lock` con el cual lleva un control de las gemas y sus versiones instaladas para que la próxima vez que corras este comando no intente instalar gemas que ya están instaladas.
También existe el comando `bundle update`, el cual actualiza la versión de las gemas.

>NOTA: si el comando `bundler` no funcionó, primero deberás instalar la gema en tu computadora desde la terminal con:
>`$ gem install bundler`. Y luego vuelve a ejecutar `$ bundle install`.

4) Para continuar con la configuración crea un archivo llamado `Rakefile` con el siguiente código:

```ruby
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "./app"
  end

  task "console" do
    exec "irb -r./app.rb"
  end
end
```
Lo que estamos haciendo aquí es hacer uso de la gema `sinatra-activerecord` para pedirle que cargue los comandos de rake (rake tasks). Estos son comandos que nos permiten interactuar con la Base de Datos y con nuestra app. Verifica que esté funcionando ejecutando el siguiente comando en la terminal: `bundle exec rake -T`

5) Ahora que ya tenemos nuestras gemas instaladas y los comandos rake, dentro de tu aplicación crea un archivo llamado `app.rb`. En este archivo tendremos las rutas y la conexión a nuestra DB. Poco a poco iremos agregando el código necesario. Agrega el siguiente código:

  ```ruby
  require 'sinatra'
  require "sinatra/activerecord"

  get '/' do
    "Hello world"
  end
  ```

6) Para poder visualizar nuestra aplicación, necesitamos ejecutar nuestro archivo principal:

  ```ruby
  $ ruby app.rb
  ```

En éste momento sinatra levanta **Thin** un servidor web local donde  veremos nuestra aplicación. Fíjate que por default el puerto es `:4567`, por lo tanto tenemos que acceder a [http://localhost:4567/](http://localhost:4567/).

La única ruta que tenemos en nuestro controlador es `/` (raíz), y lo único que hace es mostrar un texto `"Hello world"`, sin embargo lo que nosotros queremos es mostrar una página más elaborada que contenga nuestro código de HTML. Para eso hay que empezar a crear **Vistas**.

### Vistas

7) Empieza por crear una carpeta dentro de tu aplicación llamada `/views`. Es necesario que se llame de esta manera ya que **Sinatra** la busca por default para renderear las vistas de tu app.

8) Ahora vamos a crear nuestro primer "Template" (HTML) para nuestra app. Dentro de tu carpeta `/views` crea el archivo `index.erb` y agrega el siguiente código:

  ```html
  <h1>Users App</h1>
  ```
**¿Cómo hacemos uso de nuestro nuevo template?**

9) Para usar nuestra nueva vista, ve a tu controlador, borra el string `"Hello world"` y en su lugar escribe `erb :index`. Lo que estamos haciendo aquí es decirle a Sinatra que va a renderear (mostrar) un template que nosotros definimos y agregamos dentro de la carpeta `/views`.

> Como acabamos de agregar un archivo, seguramente tendrás que tirar y levantar tu servidor, recuerda hacerlo con:
> `$ ruby app.rb`.


### Base de Datos

10) Vamos a conectar nuestra aplicación con una base de datos para poder almacenar la información de nuestros usuarios:

Lo primero que tenemos que hacer es agregar esta línea en nuestro archivo `app.rb`:

  ```ruby
  set :database, {adapter: "sqlite3", database: "db/users.sqlite3", pool: 30}
  ```
Lo que está haciendo es establecer una conexión a la DB llamada `users.sqlite3`, haciendo uso del adaptador de `sqlite3`.

La línea anterior se encarga de establecer la conexión, pero en realidad aún no existe el archivo de DB donde se guardará la información. Para generarlo tenemos que ejecutar:

  ```sh
  $ bundle exec rake db:create
  ```
Fíjate que esta línea nos esta creando el archivo de DB dentro de la carpeta `/db` que también genera automáticamente.

### Migraciones

Las migraciones nos sirven para interactuar con nuestra DB, lo que haremos a continuación es crear una migración que hará la tabla `users` dentro la DB con sus atributos correspondientes.

11) Ejecutamos este comando para generar el archivo de migración:

  ```sh
  $ bundle exec rake db:create_migration NAME=create_users
  ```
Revisa dónde es creado el archivo de migración automáticamente: `/db/migrate/20160707153642_create_users.rb`

12) Una vez que creamos nuestro archivo, ábrelo y vamos a editar los atributos que tendrán nuestros usuarios. Tu migración deberá quedar así:

  ```ruby
  class CreateUsers < ActiveRecord::Migration
    def change
      create_table :users do |t|
        t.string :name
        t.string :email
      end
    end
  end
  ```
Lo que hicimos fue crear la tabla **users** con sus respectivos atributos y tipos de datos, como lo muestra la siguiente tabla:
<center>
<table class="table table-responsive table-bordered table-condensed">
  <thead>
  <tr>
    <th>Nombre</th>
    <th>Tipo de Dato</th>
    <th>Descripción</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>name</td>
    <td>string</td>
    <td>Nombre</td>
  </tr>
  <tr>
    <td>email</td>
    <td>string</td>
    <td>Email</td>
  </tr>
  </tbody>
</table>
</center>

13) Ahora ya que tenemos nuestra migración terminada, hay que ejecutarla para que se generen los datos dentro de la DB, ejecuta el siguiente comando:

  ```sh
  $ bundle exec rake db:migrate
  ```

### Modelo `User`
Vamos a crear nuestro modelo `User`.

14) En la raíz de tu aplicación, crea la carpeta `/models` y dentro crea el archivo `user.rb`.

15) Abre tu nuevo archivo y agrega el siguiente código:

  ```ruby
  class User < ActiveRecord::Base
  end
  ```

16) Para que nuestra aplicación sea capaz de leer nuestro nuevo modelo, hay que requerirlo en `app.rb`. De esta forma, si necesitas crear más modelos, lo único que tienes que hacer sería requerirlos en tu aplicación. Agrega la siguiente línea junto a los demás *requires*:

  ```ruby
  require './models/user.rb'
  ```

### Creando usuarios

Vamos a crear un formulario el cual nos permita ir creando usuarios en nuestra DB.

17) Ve a tu vista `index.erb` y agrega un formulario que te permita introducir los atributos de tu usuario:

  ```html
  <form action="/users" method="post">
    <input type="text" name="name" placeholder="Name"><br>
    <input type="email" name="email" placeholder="Email"><br>
    <input type="submit">
  </form>
  ```
Fíjate los atributos que tiene nuestro formulario: `action="/users"` y `method="post"`. Está haciendo una petición `post` a la ruta `/users`, **una ruta que aún no hemos definido**.

18) Vamos a definir la ruta `/users` en nuestro controlador:

  ```ruby
  post '/users' do
  end
  ```
La forma que tenemos para capturar la información que el usuario introduce en el formulario es por medio de un Hash llamado `params`.

  **¿Cuál es el `key` y cuál es el `value` del hash `params`?**
  - El **key** es el valor del atributo `name` del input de tu formulario.
  - El **value** es lo que el usuario haya escrito en el input del formulario.

  ```ruby
  post '/users' do
    # Capturamos los valores del formulario con 'params'
    name  = params[:name]
    email = params[:email]
    # Creamos una instancia de la clase User con sus atributos necesarios
    user  = User.new(name: name, email: email)
    # Si el usuario se guardó en la DB, redirige a su perfil, de otra forma
    # vuelve a mostrar el formulario.
    if user.save
      redirect to("/users/#{user.id}")
    else
      erb :index
    end
  end
  ```
Cuando el usuario se guarda en la DB satisfactoriamente, estamos redirigiendo al perfil de ese usuario, una página que aún no existe.

19) Crea la ruta del perfil del usuario. En este punto ya debes de saber dónde crearla. Recuerda que como es un `GET` también tenemos que crear la vista (template) que mostrará el perfil del usuario. Por lo tanto también hay que crear el archivo `profile.erb`, también ya debes de saber dónde va éste archivo.

  ```ruby
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :profile
  end
  ```
Lo que está haciendo el controlador es hacer uso de `ActiveRecord` para buscar un usuario basado en su `id`, lo guardamos en una variable de instancia para usarla en el template `profile.erb`. También date cuenta que estamos obteniendo el `id` de la url `/users/:id` a través de `params`. En la url los dos puntos, seguidos de un nombre, por ejemplo `:id` es un placeholder, que puede tomar cualquier valor que llegue a esa URL, en este caso ID's.

20) En tu vista del perfil del usuario, vamos a mostrar una bienvenida.

  ```html
  <h1>Profile Page</h1>
  <h2><%= @user.name %></h2>
  <h3><%= @user.email %></h3>
  ```
En la vista estamos embebiendo código de `ruby` en `html`. La forma de hacerlo es usando ciertas etiquetas:
  - `<%  %>`:  Ejecuta código de ruby.
  - `<%=  %>`: Ejecuta código de ruby y además lo inserta en el DOM.

### Mostrando todos los usuarios

Vamos a generar una ruta que nos muestre todos los usuarios existentes en la DB.

21) Lo primero es definir nuestra ruta.

  ```ruby
  get '/users' do
    @users = User.all
    erb :users
  end
  ```
En este punto vamos a la DB para traer todos los usuarios. Esto nos regresa un arreglo de objetos `User`, el cual estamos guardando en la variable `@users`. Luego estamos rendereando el template `erb :users` para mostrar una vista donde desplegaremos los usuarios.

22) Recuerda que un template renderea un archivo. En este caso nuestro template se llama `erb :users`, por lo tanto hay que crear la vista `users.erb`.

  ```html
  <h1>All Users</h1>
  <% @users.each_with_index do |user, index| %>
    <p><%= index + 1 %>. <%= user.name %></p>
  <% end %>
  ```
Estamos haciendo uso de nuestra variable de instancia `@users`, la cual contiene un arreglo de objetos `User`. Al momento de usarla en la vista, tenemos que iterar en el arreglo para poder acceder a los atributos de cada uno de nuestros objetos.

### UX
No hemos puesto mucha atención a nuestra UX, vamos a mejorarla un poquito sólo con agregar links para poder navegar dentro de nuestra app.

23) En el archivo `index.erb`, que es el home de nuestra app y donde podemos crear usuarios, agrega hasta abajo de tu código lo siguiente:

  ```html
  <a href="/users">Show all users</a>
  ```

24) En el archivo `users.erb`, donde hacemos un index de todos nuestros usuarios, vamos a agregar un link para poder regresar al home, donde podemos crear usuarios. Hasta abajo de tu código agrega lo siguiente:

  ```html
  <a href="/">Home</a>
  ```

25) En la misma vista `users.erb`, además de mostrar todos los usuarios, vamos a poner un link sobre el nombre de cada usuario para que nos redirija a su perfil. Remplaza la línea:

```erb
<p><%= index + 1 %>. <%= user.name %></p>
```
Por:
```erb
<p><%= index + 1 %>. <a href="/users/<%= user.id %>"><%= user.name %></a></p>
```

26) En la vista `profile.erb` vamos a agregar un link para regresar al index de todos los usuarios. Agrega el siguiente código hasta el final:

  ```html
  <a href="/users">Show all users</a>
  ```

### Final
Hasta este punto tenemos una aplicación muy sencilla pero absolutamente funcional, creada desde cero y en la cual podemos crear usuarios y guardarlos en una Base de Datos, haciendo uso del framework **Sinatra**.
