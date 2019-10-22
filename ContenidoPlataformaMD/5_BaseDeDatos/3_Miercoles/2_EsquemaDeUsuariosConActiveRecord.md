En este ejercicio vamos a modelar una aplicación con usuarios:

```
+------------+
| usuarios   |
+------------+
| id         |
| first_name |
| last_name  |
| gender     |
| birthday   |
| email      |
| phone      |
+------------+
```

Este reto te permitirá familiarizarte con los conceptos básicos del ORM por default de Rails llamado ActiveRecord.

Ten en cuenta que no todas las funciones que tiene ActiveRecord en Rails están disponibles en este proyecto.

Te recomendamos empezar leyendo la [guía 'Active Record Basics'](http://guides.rubyonrails.org/active_record_basics.html).

Las siguientes guías también te serán útiles para completar este reto:
- [Migrations](http://guides.rubyonrails.org/v3.2.13/migrations.html)
- [Validations](http://guides.rubyonrails.org/v3.2.13/active_record_validations_callbacks.html)

## Objetivos Académicos

- Familiarizarse con un ORM
- Conocer como modificar una base de datos

## Actividades
####[Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8WFlyeVZpd0JiV1k)

### Configurar el proyecto

- Instala las dependencias con el comando `bundle`
- Crea la base de datos con el comando `rake db:create`

### Migraciones

Las migraciones son archivos que sirven para crear tablas y modificarlas en la base de datos.

Utiliza el siguiente código y agrega lo que le falte para crear la tabla de usuarios como aparece al inicio del ejercicio.

El siguiente link puede ayudarte con la sintaxis:

- [Railsguides Migration Overview](http://guides.rubyonrails.org/v3.2.13/migrations.html)

```Ruby
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      # Agrega aquí las columnas que faltan

      t.timestamps
    end
  end
end
```

Una vez que definas el diseño de tu tabla deberás correr la migración con el siguiente comando. Y también correremos el archivo `seed` para llenar de información la tabla.

```
$ rake db:migrate
$ rake db:seed
```

Para comprobar que hiciste bien tu migración utiliza el siguiente comando.

```
$ rspec spec/migrate_create_table_spec.rb
```

Todas las pruebas deberán pasar. Si tienes un error intenta solucionarlo si no puedes busca a un instructor.

Si quieres jugar con el proyecto desde la consola de Ruby utiliza el siguiente comando y en la guía de ActiveRecord busca que métodos puedes utilizar.

```
$ rake console
```

### El Modelo User

El siguiente archivo contiene la clase `User`: `app/models/user.rb`.

ActiveRecord se encarga de crearte `readers` y `writers` para cada uno de las columnas que definiste.WOW!!!

#### Crear métodos personalizados:

- Crea un método llamado `name` que regrese el nombre completo del usuario.
- Crea un método llamado `age` que regrese la edad en años del usuario.

Corre las pruebas:

```
$ rspec spec/user_spec.rb -e "#name and #age"
```


#### Validaciones

Entra al siguiente link y aprende como ActiveRecord crea validaciones para los campos.[ActiveRecord Validations](http://guides.rubyonrails.org/v3.2.13/active_record_validations_callbacks.html)

Crea las siguientes validaciones en tu modelo `Usuario`:

- La dirección de email deberá contener una `@` y al menos un `.` , con al menos un caracter antes de la `@`, un caracter entre la `@` y el primer `.` y al menos dos caracteres después del `.` final.
- Dos usuarios no deberán tener el mismo email, este debe de ser único.
- Los usuarios deberán de ser mayores de edad.

Corre las pruebas:

```
$ rspec spec/user_spec.rb -e "validations"
```

#### Validaciones Avanzadas

Crea una validación personalizada donde el teléfono no pueda tener menos de 10 dígitos sin contar caracteres no numéricos.

Todas las pruebas deben pasar.

```
$ rspec spec/user_spec.rb -e "advanced validations"
```
