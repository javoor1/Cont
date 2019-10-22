Antes de hacer este ejercicio deberás comprender las relaciones de uno a muchos.

Las relaciones de muchos a muchos son relaciones fáciles de entender pero algo complicadas de implementar. Para comprenderlas lo más fácil es verlo en un ejemplo:

Ejemplos de relaciones muchos a muchos:
- Un post tiene varios tags / un tag puede estar dentro de muchos posts.
- Un clase tiene varios alumnos / una alumno puede tomar varias clases.
- Una marca puede tener varios tipos de productos / un tipo de producto puede venderse por varias marcas.
- Una lista tiene varios contactos / un contacto puede pertenecer a varias listas.

Para poder resolver este tipo de relaciones es necesario crear una tabla extra llamada tabla de unión (join table). Esta tabla contendrá como clave foráneas (foreign keys) las llaves primarias (primary keys) de las otras dos tablas. Esto crea entre la nueva tabla y cualquiera de las otras dos una relación de uno a muchos, resolviendo la relación muchos a muchos.

Esta tabla podrá contener adicionalmente otros campos.

Ejemplo:

```
+------------+       +---------------+       +--------------+
| posts      |       | post_tags     |       | tags         |
+------------+       +---------------+       +--------------+
| id         |<--\   | id            |    /->| id           |
| title      |    \--| posts_id      |   /   | name         |
| content    |       | tag_id        |--/    | created_at   |
| created_at |       +---------------+       | updated_at   |
| updated_at |                               +--------------+
+------------+                               

```

En este caso la tabla de unión es `post_tags` y en ella podemos saber que `post` esta relacionado con que `tag`.

En bases de datos buscamos mucho seguir el principio [DRY](http://en.wikipedia.org/wiki/Don't_repeat_yourself) ya que tener información repetida crearía muchas confusiones o mucho trabajo extra en el caso de que tengamos que modificarla.

Nunca deberías guardar la misma información en dos lugares diferentes. A esto se le llama [normalization](http://en.wikipedia.org/wiki/Database_normalization) un recurso para entenderlo es este [articulo de Microsoft](http://support.microsoft.com/kb/283878).   


## Objetivos Académicos

- Familiarizarse con las relaciones de muchos a muchos
- Aprender a diseñar una base de datos  

## Actividades

### Diseña el esquema de un DB con una relación muchos a muchos

Utiliza la siguiente herramienta para diseñar el esquema de las tablas que te presentamos arriba. Adicional a este esquema debes crear uno entre autores y libros. Piensa que atributos tiene cada uno y piensa en atributos que puedan ir dentro de la tabla de unión.

Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

- [SQL Designer](http://ondras.zarovi.cz/sql/demo/)
- Guarda esta URL porque la utilizarás muchísimo.
