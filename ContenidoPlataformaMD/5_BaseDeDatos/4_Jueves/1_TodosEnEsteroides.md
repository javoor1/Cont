En este ejercicio mejorarás la aplicación de TODO's que hiciste anteriormente.

## Objetivos Académicos
####[Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8aU9YZ3dIc09fclE)

- Incorporar una base de datos.
- Intentar acercarse lo más posible a un diseño MVC.

## Actividades

Para este ejercicio te vamos a dar un esqueleto, revisa los archivos e intenta comprender su uso.

### Paso 1: Configuración

Como siempre al empezar a trabajar en un proyecto corre el comando `bundle` para instalar las gemas necesarias.

Hemos creado un archivo de migración, complétalo con las columnas que requiera tu modelo `Task`.

Después de completar la migración corre los comandos de `db:create` y `db:migrate`.

### Paso 2: Modelo y Seed

Para crear un modelo pega el siguiente código en el archivo correspondiente.

```
class Task < ActiveRecord::Base

# Fíjate en la línea anterior como este modelo está heredando de la clase
# ActiveRecord::Base
# Que tanto código te regala ActiveRecord

end
```

En el archivo `db/seeds.rb` crea entre 10 y 15 registros de prueba utilizando los métodos de ActiveRecord.

Juega con ellos en la consola y verifica que se crearon correctamente. Puedas entrar a la consola con `rake console`.

### Paso 3: Completa el esqueleto

- Implementa el método `index`.
- Implementa el método `add`.
- Implementa el método `delete`.
- Implementa el método `complete`.

Si tienes dudas, revisa las explicaciones del ejercicio 'Ruby Todos' del día jueves de la semana 2.
