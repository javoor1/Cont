Hasta ahora seguramente has estado guardando los passwords de tus usarios como strings en la base de datos.

>HAS PENSADO LO IRRESPONSABLE QUE PUEDE SER HACER ESTO!!!

Imagina que alguien tiene acceso a tu base de datos, ya sea un infiltrado o cualquier persona que trabaja en tu proyecto. Tus usuarios en la mayoría de los casos utilizan passwords iguales o muy similares para todas las plataformas que usan (email, bancos, redes sociales, etc.).

Es por esto que si alguien tiene acceso a tu base de datos, obtendrá información totalmente valiosa de tus usuarios (una lista de emails y passwords).

> ES TU RESPONSABILIDAD COMO DESARROLLADOR WEB, HACER TU APLICACIÓN SEGURA PARA LOS USUARIOS.  

Entonces como le hago para autenticar usuarios si no puedo guardar su password? Para esto utilizaremos [BCrypt](https://en.wikipedia.org/wiki/Bcrypt).

<center>
<img src="https://media.giphy.com/media/26ybuWkbYHC7mDWZa/source.gif" width="280" height="280"/></center>

BCrypt es un proceso que usa un algoritmo de cifrado o encriptación (hashing algorithm) de un sólo camino que es, en teoría, matemáticamente irrompible.

BCrypt toma un fragmento de datos (un password), los encripta y regresa un "hash" o "digital fingerprint" (una cadena cifrada). Algo muy importante es que este proceso no es reversible.

Por ello una vez encriptado el password podemos guardarlo sabiendo que si alguien encuentra este valor, no podrá descifrar el valor original.

Lo que si podemos hacer es, que cuando el usuario nos vuelva a dar el password, lo volvemos a encriptar y comparamos las dos versiones encriptadas del password.

> LISTO!!!

En realidad el proceso que BCrypt utiliza es algo más complicado para cuidarse de otros tipos de ataques y realmente que sea 99.99999999% seguro.

Esta es la documentación de [BCrypt](https://github.com/codahale/bcrypt-ruby/tree/master)

## Objetivos Académicos

- Comprender conceptos de seguridad
- Familiarizarse con BCrypt y comprender su funcionamiento

## Actividades

Utilizando nuestro esqueleto de sinatra crea un modulo CRUD de usuarios.

Deberás de crear la tabla de datos, el modelo , las rutas y vistas necesarias para tener un modulo de usuarios completo, adicionalmente agrega la parte de sesiones (Login y Logout).

Antes de empezar a crear tu modulo te recomendamos leer todo el ejercicio ya que te enseñaremos a crear parte de este modulo de una mejor forma.


### Paso 1: Configuración de BCrypt

- Agrega a tu Gemfile bcrypt para que se instale
- Después hay que hacer un require dentro de el archivo de config/environment.rb
- Por último hay que agregar al modelo donde lo quieres utilizar la siguiente línea.

```ruby
include BCrypt
```

### Paso 2: Como utilizar BCrypt

#### Base de Datos

Dentro de tu base de datos en vez de tener una columna para el password, necesitas agregar una columna con el nombre de `password_digest` de tipo string. La palabra digest es sinónimo de hash y es aquí donde guardaremos el password encriptado o el `password_digest`.

#### Getter y Setter

Crearemos una variable de instancia para el password. A nuestro modelo necesitamos agregar un getter y un setter para la variable password, de esta forma desde afuera podremos seguir utilizando por ejemplo `user.password` en vez de realmente la columna `password_digest`. Lee los dos métodos para que comprendas la lógica que sigue BCrypt.

El método Password es una clase de BCrypt la cual genera el hash.

```ruby
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end
```
Finalmente necesitamos actualizar nuestro método de autenticación:

```ruby

  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end

```

ojo: Si lees detenidamente estos códigos pareciera que realmente si se esta comparando el password sin encriptar. Esto se debe a que la clase Password re-define el método `==`. Puedes comprobarlo buscando dentro del repo de [BCrypt](https://github.com/codahale/bcrypt-ruby/tree/master).

#### Comprueba que funcione

Ahora intenta crear un usuario y y después intenta correr el método de autenticación con el usuario que creaste pasando un password correcto y uno incorrecto para ver que funcione.


### Helpers para sesiones

Este paso ya no tiene que ver con BCrypt si no con facilitarnos el manejar sesiones en nuestra aplicación.

Agrega dentro de la carpeta de helpers un archivo llamado `user.rb`.

Copia los siguientes métodos

```ruby
helpers do
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end
end

```

El primer método te servirá para hacer referencia dentro de tus controladores y vistas a el usuario que tiene una sesión. El segundo método te servirá para poder poner lógica que dependa si el usuario tiene una sesión o no.


### Acaba todo tu CRUD de usuarios

Una vez que termines este ejercicio te recomendamos guardar esta implementación, ya que te servirá como "template" o ejemplo para futuras aplicaciones.
