En los ejercicios pasados ya vimos como crear una base de datos, como agregar tablas, columnas e información. Adicionalmente vimos como podemos consultar la información de la base de datos pero no hemos visto a fondo como modificar o eliminar la información.

## Objetivos Académicos

- Aprender a modificar y eliminar información de una base de datos
- Utilizar UPDATE y DELETE junto con un WHERE

## Actividades

Para este ejercicio vamos a utilizar la misma base de datos del ejercicio anterior `EssentialSQL.db`.

<center>
  <img style="width: 600px;" src="https://codealab.files.wordpress.com/2015/04/sqlite1.png">
</center>

### Paso 1: INSERT

Agrega a la tabla de `Orders` una nueva orden relacionándola con un cliente existente. Adicionalmente para esta nueva orden crea dos registros en la tabla de `OrderDetails`. Por ahora no importan los datos invéntalos.  

### Paso 2: INSERT / SELECT / UPDATE

En este paso modificaremos de manera más avanzada la base de datos.

La empresa Floor Co. creará una nueva empresa y te esta pidiendo que las ordenes que hizo en 2013 se las asignes a esta nueva empresa. Para ello deberás:

- Primero crear un nuevo cliente en la tabla `Customers`. (Inventa los datos)
- Has una consulta para saber cuales son las ordenes de la empresa Floor Co.
- Finalmente deberás cambiar a las ordenes de 2013 su valor de `CustomerID`

SQL te deja modificar información basado en una consulta. Revisa este ejemplo e intenta aplicarlo al caso de Floor Co.

Ejemplo:

A los registros de la tabla `OrderDetails` que tienen un precio mayor a $5 pesos se les incorporará un impuesto por ser artículos de lujo y se les deberá sumar a la cantidad actual $2 pesos.

```sql

sqlite> select * from OrderDetails where UnitPrice > 5;
=>
OrderDetailID  OrderID     ProductID   UnitPrice   Quantity  
-------------  ----------  ----------  ----------  ----------
5              2           5           9.97        140       
6              3           6           14.69       160       
11             5           5           9.97        130       
12             5           6           14.69       150       
17             7           5           9.97        120       
18             8           6           14.69       130       
31             14          5           9.97        80        
32             15          6           14.69       90        
37             17          5           9.97        70        
38             17          6           14.69       80        
43             19          5           9.97        60        
44             19          6           14.69       70
```

```sql
sqlite> update OrderDetails set UnitPrice = UnitPrice + 2 where UnitPrice > 5;
```

```sql
sqlite> select * from OrderDetails where UnitPrice > 5;
=>
OrderDetailID  OrderID     ProductID   UnitPrice   Quantity  
-------------  ----------  ----------  ----------  ----------
5              2           5           11.97       140       
6              3           6           16.69       160       
11             5           5           11.97       130       
12             5           6           16.69       150       
17             7           5           11.97       120       
18             8           6           16.69       130       
31             14          5           11.97       80        
32             15          6           16.69       90        
37             17          5           11.97       70        
38             17          6           16.69       80        
43             19          5           11.97       60        
44             19          6           16.69       70

```

### Paso 3: Borrar

Borrar tiene consecuencias y no es tan fácil como parece.

Imagina que quieres borrar al cliente Slots Carpet. Este cliente si lo borras en la base de datos se quedarán todas sus `Orders` y sus `OrderDetails` y es algo que no queremos.

Para poder borrar a este cliente es aconsejable primero borrar todos los registros que dependen de este cliente. La sintaxis de DELETE es similar a la de UPDATE.

Te recomendamos antes y después de borrar, hacer las consultas necesarias para estar seguro de que al final borraste lo que necesitabas.

Finalmente verifica que hiciste las cosas correctas corriendo estas consultas y verificando que obtengas los mismos resultados:


```sql

sqlite> select count(*) from OrderDetails;
=>
count(*)  
----------
43

sqlite> select count(*) from Orders;
=>
count(*)  
----------
18

```
