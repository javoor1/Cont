Hoy en día hay muy pocas aplicaciones que no contemplan un modelo de usuarios. Esto es que como usuario puedas registrarte para poder entrar y salirte de la aplicación.

En este ejercicio vamos a hacer una aplicación muy básica que cumpla estas funcionalidades. El objetivo es conocer como se implementa la autenticación de usuarios dentro de una aplicación web. Por ello lo único que hará es dejar a una persona registrarse para tener una cuenta, que pueda iniciar sesión con esta cuenta. Una vez iniciando sesión deberá desplegar una página solo para personas con cuentas y finalmente poder terminar su sesión.

Por lo mismo para esta aplicación solamente utilizaremos el modelo `Users`.

El objetivo es aprender como hacer para mantener una sesión a travez de diferentes peticiones web. Tu aplicación no sabe si las peticiones están llegando de la misma computadora o de diferentes computadoras. Para ello vamos a utilizar sesiones en sinatra, las sesiones guardan información utilizando HTTP `cookies`.


## Objetivos Académicos
- Comprender como implementar autenticación de usuarios en una app
- Comprender como funcionan las sesiones y los cookies

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8eWd2TDBHZ0VaMXM)

### Determina tus Rutas

Utiliza el esqueleto vacío de sinatra.

Para esta app solamente vamos a tener un modelo `User`. Lo más complicado en esta app serán los controladores y necesitaremos las siguientes acciones o métodos:  

- Iniciar Sesión
- Cerrar Sesión
- Crear cuenta de usuario
- Página secreta
- Redirigir a una persona que intenta ver la página secreta a iniciar sesión sin haber iniciado una sesión.  

Deberás tener cuatro rutas, piensa cuales de estas deben de ser peticiones POSTs y cuales deben de ser peticiones GET y porque?

### Crea una cuenta

Empieza por crear el comportamiento necesario para crear una cuenta. En el momento que una persona se registra debe de darte su nombre, email y crear su password.

Piensa que atributos debe de tener el modelo `User`. Para iniciar sesión un usuario te dará su email y su password. Piensa como hacer para saber si te dieron el password correcto y que hacer cuando te dan uno incorrecto.  


Dentro del modelo deberás tener un método que funcione de la siguiente manera.
```
class User < ActiveRecord::Base
	# ej. User.authenticate('fernando@codea.mx', 'qwerty')

  def self.authenticate(email, password)

    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
  end

end
```

Busca a un instructor para que revise el método que implementaste y lo demás que has creado. Piensa en si este método es seguro o no. La seguridad es algo muy importante dentro de una aplicación.


### Iniciar Sesión

Ya que un usuario puede registrarse para crear una cuenta, necesitamos una manera para poder crear una sesión. Para ello deberás hacer un POST a `/login` envíando el email y password de un usuario. Piensa que información debes de guardar y donde en el caso de que te manden un email y password validos. Para guardar esta información existe un Hash que sinatra utiliza llamado `session`.   

Investiga en la documentación de sinatra como utilizar este sesiones, y si no puedes busca a un instructor para que te explique. Es muy sencillo.

### Cerrar Sesión

Implementa ahora un acción dentro de tu controlador que termine la sesión de un usuario si la visitan. Seguramente tendrás que borrar algo de información dentro del Hash de `session`.

### Authorización

Aunque suenen muy similar existe una gran diferencia entre Autorización y Autenticación.

Autenticación responde a la pregunta "¿Quien eres?" y autorización a la pregunta "¿Que permisos tienes?"

La Autenticación sirve para revisar si un usuario tiene una cuenta válida y ver si puede acceder a la aplicación. Los usuarios pueden tener diferentes permisos y estos te dicen si están autorizados para poder ver un contenido especifico.

Ahora un usuario debe de estar autorizado para ver la página secreta solo si tiene una sesión activa, de lo contrario deberás redirigirlo a la sección de Iniciar Sesión y desplegar un mensaje que le haga saber que no puede ver esa página sin tener una sesión.

Para esto existen filtros llamados [before filter](http://www.sinatrarb.com/intro#Filters) en sinatra, investiga como funcionan he implementa esta funcionalidad.  

Otra forma no muy elegante es poner esta lógica dentro de la ruta misma.
