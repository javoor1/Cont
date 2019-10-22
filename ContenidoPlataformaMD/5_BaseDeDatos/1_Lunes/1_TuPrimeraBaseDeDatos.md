Utilizando todos los conceptos de diseño que viste el fin de semana, vamos a crear nuestra primera base de datos.

SQLite es un sistema de gestión de bases de datos relacional muy simple.

La información se guarda en un archivo de texto, que podrás ver dentro del folder donde la creas. Otras bases de datos guardan la información de una manera más complicada.

Por default SQLite no muestra la información de la mejor forma, pega las siguientes líneas en la Terminal para mejorar esto:

```
cat << EOF > ~/.sqliterc
.headers on
.mode column
EOF
```

## Enlaces externos
- [Tutorial de SQLite](http://zetcode.com/db/sqlite/).


## Objetivos Académicos

- Crear una base de datos.
- Familiarizarse con la sintaxis de SQL.
- Aprender a crear, editar y borrar información de una base de datos.


## Actividades

### Paso 1: Crear la base de datos

Usa el siguiente comando para crear tu primera base de datos y entrar al prompt de "sqlite":

```
sqlite3 ejemplo.db

SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.

sqlite>
```


### Paso 2: Crear la primera tabla

Lee la siguientes líneas y pégalas. Este comando crea la tabla de usuarios, intenta entender que hace:

```sql
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
);
```

El siguiente artículo explica los [tipos de datos de SQLite](http://www.sqlite.org/datatype3.html) como VARCHAR, DATETIME, INTEGER, etc.


### Paso 3: Insertar información en la tabla.

Para insertar información en la tabla, copia las siguientes líneas en el prompt de "sqlite":

```sql
INSERT INTO usuarios
 (nombre, apellido, email, fecha_nacimiento, genero)
 VALUES
 ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
```

Para seleccionar la información de la tabla usa la siguiente línea.

```sql
SELECT * FROM usuarios;
```

Agrega tus datos en la tabla usuarios con el mismo comando `INSERT` de arriba. Y corre el comando de `SELECT` para verificar que se guardó correctamente.


### Paso 4: Comandos multilínea

Todos los comandos de SQL deben terminar en `;`. Podemos introducir comandos de más de una línea y SQLite solamente los ejecutará hasta que introducimos un `;`.

Fíjate como los ejemplos de arriba usan esto para separar las sentencias de SQL y sean más fáciles de leer.


### Paso 5: Errores

Intenta volver a insertar otro registro con la misma información de Carlos Ribero.

¿Qué significa el error que se muestra? Busca en qué parte de las sentencias anteriores le indicamos a nuestra tabla de `usuarios` que tenga este comportamiento. ¿Para qué son útiles este tipo de validaciones?


### Paso 6: Agregar una columna

Vamos a agregar la columna `apodo` a nuestra tabla de usuarios. Busca documentación de la sentencia `ALTER` para poder realizar esto. La columna apodo debe tener tipo `VARCHAR(64)` y ser obligatorio (`NOT NULL`).

No te preocupes si cometes algún error. Sigue estos pasos para empezar de nuevo:
- Salte del prompt de "sqlite" con el comando `.quit`.
- Borra el archivo `ejemplo.db`.
- Empieza de nuevo por el paso 1.

El comando `.schema` muestra el esquema de la tabla. Verifica que se halla agregado la columna correctamente.


### Paso 7: Actualizar información

Agrega el apodo 'Charly' a Carlos Ribero y tu apodo para el registro que creaste con tus datos. Para esto utiliza la sentencia `UPDATE`.

Con la misma sentencia `SELECT` que usamos antes puedes verificar que se hallan agregado los apodos.


#### Actualizando múltiples columnas

El registro de Carlos tiene varios errores. Su apellido correcto es `Rivero` y su año de nacimientos es `1980`. Debes de poder actualizar las dos columnas con una sola sentencia de SQL.

Si tienes alguna duda busca la documentación de la sentencia `UPDATE`.


### Paso 8: Guarda tu trabajo

Guarda todas las sentencias de SQL que utilizaste en este challenge en un archivo.
