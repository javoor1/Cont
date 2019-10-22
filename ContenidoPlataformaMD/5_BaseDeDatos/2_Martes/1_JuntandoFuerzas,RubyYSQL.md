Ya que los programadores solemos ser muy flojos, en este ejercicio vamos a crear métodos que nos ayuden a dejar de escribir SQL,  para solamente escribir Ruby.

Vamos a usar la tabla de chefs del ejercicio de Recetas de Comida para empezar a crear nuestra base de datos desde Ruby.

## Objetivos Académicos

- Crear e interactuar con una base de datos desde código de Ruby
- Usar la base de datos SQLite y la gema `sqlite3`


## Actividades

### Paso 1: Instalar la gema SQLite

```console
$ gem install sqlite3
```

### Paso 2: Setup

Para iniciar necesitamos 2 funciones:
- `create_table` que creará la tabla chefs
- `seed`que insertará registros de ejemplo en la tabla

Completa el código de `seed` para insertar más registros de ejemplo.

```ruby
require 'sqlite3'

class Chef
  def self.create_table
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Ferran', 'Adriá', '1985-02-09', 'ferran.adria@elbulli.com', '42381093238', DATETIME('now'), DATETIME('now'));
        -- Añade aquí más registros
      SQL
    )
  end


  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end
```

Podemos usar `irb` para ejecutar las funciones que acabamos de crear:

```console
$ irb
irb> load 'chef.rb'
=> true
irb> Chef.create_table
=> []
irb> Chef.seed
=> []
```

Verifica desde la consola de Sqlite que se halla creado la tabla y que se halla poblado con los registros que creaste en la función `seed`. Nuestra base de datos se llama `chefs.db`.


### Paso 3: ORM

Crea una función para inicializar (`initialize`) un Chef con todos sus atributos.

Vamos a crear funciones para ejecutar la mayoría de los comandos que usamos en SQL, desde Ruby.

Fíjate la correspondencia que existe entre SQL y las funciones que vas a crear:

<table class="table table-striped table-condensed">
  <thead>
    <tr>
      <th>SQL-land</th>
      <th>Ruby-land</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>La tabla de chefs</td>
      <td>La clase Chef</td>
    </tr>
    <tr>
      <td>Un registro de la tabla de chefs</td>
      <td>Una instancia de la clase Chef</td>
    </tr>
    <tr>
      <td>SELECT * FROM chefs</td>
      <td>Chef.all</td>
    </tr>
    <tr>
      <td>
        SELECT * FROM chefs WHERE first_name = 'fer' <br/>
        OR <br/>
        SELECT * FROM chefs WHERE first_name = ?, 'fer'
      </td>
      <td>Chef.where('first_name', 'fer')</td>
    </tr>
    <tr>
      <td>
        SELECT * FROM chefs WHERE id = 10 <br/>
        OR <br/>
        SELECT * FROM chefs WHERE id = ?, 10
      </td>
      <td>Chef.where('id', 10)</td>
    </tr>
    <tr>
      <td>
        INSERT INTO chefs (field1, field2, ...)
        VALUES(value1, value2, ...)
      </td>
      <td>
        chef = Chef.new(data)
        chef.save
      </td>
    </tr>
    <tr>
      <td>DELETE FROM chefs WHERE id = 40</td>
      <td>???</td>
    </tr>
  </tbody>
</table>

NOTA: Fíjate en la segunda forma de pasar parámetros a la claúsula WHERE. El `?` se llama placeholder y sirve para evitar ataques de `SQL injection`. Busca más información sobre SQL injection.
