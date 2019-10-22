Antes de hacer este ejercicio deberás comprender las relaciones de uno a muchos.

Las relaciones de uno a uno son relaciones fáciles de solucionar pero es difícil saber cuando deben usarse. Para comprenderlas lo más fácil es verlo en un ejemplo:

Un ejemplo puede ser una persona y su ubicación física, hasta hoy no hemos podemos estar en dos lugares diferentes al mismo tiempo desgraciadamente.

 ```
+-------------+
| persona     |
+-------------+
| id          |
| nombre      |
| apellido    |
| email       |
| fecha_nac   |
| genero      |
| latitud     |
| longitud    |
| altura      |
+-------------+

```

### ¡Pero aquí solo hay una tabla!

Todas las relaciones uno a uno podrían ser representadas como una sola tabla. La regla para saber cuando existe una de estas relaciones y hay que dividir la información en dos tablas es:

- Cuando puedes agrupar varios campos y todos ellos opcionalmente podrían ser nulos. En este caso vale la pena dividir la tabla.

Imaginemos que una no permite dar a la aplicación su ubicación y por ello varios campos serían nulos.

```
+---------------------+        +-------------------+
| persona             |        | ubicaciones       |
+---------------------+        +-------------------+
| id                  |     /->| id                |
| nombre              |    /   | longitud          |
| apellido            |   /    | latitud           |
| email               |  /     | altura            |
| ubicación_id        |-/      | created_at        |
| created_at          |        | updated_at        |  
| updated_at          |        +-------------------+
+---------------------+

```
## Objetivos Académicos

- Familiarizarse con las relaciones de uno a uno
- Aprender a diseñar una base de datos  

## Actividades

### Diseña el esquema de un DB con una relación uno a uno

Utiliza la siguiente herramienta para diseñar el esquema de la tabla que te presentamos arriba. Puedes pensar en crear una de estas relaciones tu mismo.

Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

- [SQL Designer](http://ondras.zarovi.cz/sql/demo/)
- Guarda esta URL porque la utilizarás muchísimo. 
