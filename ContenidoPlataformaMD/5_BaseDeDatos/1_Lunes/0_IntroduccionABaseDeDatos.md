# Modelo Relacional
 Una base de datos relacional es un conjunto de una o más tablas estructuradas en registros (líneas) y campos (columnas), que se vinculan entre sí por un campo en común, en ambos casos posee las mismas características como por ejemplo el nombre de campo, tipo y longitud; a este campo generalmente se le denomina ID, identificador o clave. A esta manera de construir bases de datos se le denomina modelo relacional.

 <center>
   <img style="width: 600px;" src="http://3.bp.blogspot.com/-kzJ-aqghbhk/VJUDGychv1I/AAAAAAAAAmU/-pnHERsWL0M/s1600/baseDatosSqlServer.PNG">
 </center>
# Terminología equivalente

     relación = tabla o archivo
     tupla = registro, fila o renglón
     atributo = campo o columna
     base de datos = banco de datos
     dependencia multivaluada = dependencia multivalor
     clave = llave
     clave primaria = superclave
     clave ajena = clave extranjera o clave foránea
     RDBMS = del inglés Relational Data Base Manager System que significa, Sistema Gestor de Base de Datos Relacionales


## Información y Datos
La información se obtiene como resultado de manipular datos.
Lo que se almacena son los datos. Una organización puede tener almacenado un conjunto completo de datos y, sin embargo,
no puede ser capaz de satisfacer los requerimientos de los usuarios. La información es la manera en la que se interpretan los datos almacenados.
En general, con el fin de facilitar información a los usuarios, hay que realizar diversas tareas con los datos. Estas tareas pueden ser:


* Identificar los datos.
* Localizar los datos.
* Asociar los datos.

### Concepto de Base de Datos
Desde los inicios de base de datos se dieron una serie de definiciones de lo que representaban. Las dos más interesantes podrían ser las siguientes:
* (_Yamakoudakis,1988_) Una base de datos es un conjunto bien organizado de registros en un medio de almacenamiento, que sirve a una o más aplicaciones de forma óptima, permitiéndole añadir,modificar y obtener conjuntos de datos.

* (_Date,1986_) Una base de datos es un sistema de almacenamiento de registros, cuyo objetivo es proporcionar información a diferentes usuarios.La información que proporcionara será aquella que sea necesaria a una persona o un organismo para tomar decisiones.

Las características generales de una base de datos son las siguientes:
* Es una colección de datos.
* Los datos están relacionados entre sí.
* Su descripción y definición es común.
* Su estructura se basa en la relación natural que existe entre los objetos de la vida real.

### Ventajas de una Base de Datos
El uso de las bases de datos tiene una serie de ventajas que se pueden diferenciar en función de que sean para una organizacion.
 * Permite eliminar el trabajo repetitivo y guardar los datos en un lugar externo comun.
 * Se consigue una mayor rapidez en el acceso, la modificacion y la gestion de los datos.
 * Los datos estan siempre actializados, puesto que las modificaciones
 * Se consigue una mayor rapidez en el acceso, la modificación y la gestion de los datos.
 * Los datos entán siempre actualizados, puesto que las modificaciones por parte de un usuario pueden ser consultadas inmediatamente por el resto de usuarios del sistema.

# Normalización de una Base de Datos
El proceso de normalización de una base de datos consiste en aplicar una serie de reglas a las relaciones obtenidas tras el paso del modelo E-R (entidad-relación) al modelo relacional.

## Primera Forma Normal (1FN)

Se dice que una relacion esta en 1ª forma normal si y sólo si, nunguna de sus tuplas tiene elementos que a su vez sean conjuntos.

Por ejemplo:

Se tiene una tabla con un código de programador, su nombre y el código del programa que ha hecho. Los datos serian del estilo:



<center>
  <img style="width: 400px;" src="https://codealab.files.wordpress.com/2017/06/tabla1.png">
</center>



Esta relacion no se encuentra en 1ª forma normal, ya que existen varias tuplas con elementos que a su vez son conjuntos: los programas creados por cada programador.

Se soluciona el problema incluyendo el código de programador en las tuplas de la entidad programa. Esta tabla deberia quedar así:

<center>
  <img style="width: 400px;" src="https://codealab.files.wordpress.com/2017/06/tabla2.png">
</center>

En este caso no hay ningún valor que sea conjunto para una de las claves del programa, que es la clave primaria de la tabla.


## Segunda Forma Normal (2FN)

Dependencia completa. Esta en 2FN si esta en 1FN y si sus atributos no principales dependen de forma completa de la clave principal.

### Ejemplo

<center>
  <img style="width: 400px;" src="https://codealab.files.wordpress.com/2017/06/tabla3.png">
</center>

La unica clave candidata de la tabla es {Empleado, Habilidad}.

El atributo restante, Lugar actual de trabajo, es dependiente solo en parte de la clave candidata, llamada Empleado. Por lo tanto la tabla no está en 2NF. Observe la redundancia de la manera en que son representadas los Lugares actuales de trabajo: nos dicen tres veces que Jones trabaja en la 114 Main Street, y dos veces que Ellis trabaja en 73 Industrial Way. Esta redundancia hace a la tabla vulnerable a anomalías de actualización: por ejemplo, es posible actualizar el lugar del trabajo de Jones en sus registros "Mecanografía" y "Taquigrafía" y no actualizar su registro "Tallado". Los datos resultantes implicarían respuestas contradictorias a la pregunta "¿Cuál es el lugar actual de trabajo de Jones?".

Una alternativa 2NF a este diseño representaría la misma información en dos tablas:


<center>Empleados</center>


<center>
  <img style="width: 300px;" src="https://codealab.files.wordpress.com/2017/06/tabla4.png">
</center>

<center>Habilidades de los Empleados</center>

<center>
  <img style="width: 200px;" src="https://codealab.files.wordpress.com/2017/06/tabla5.png">
</center>




## Tercera Forma Normal (3FN)

Está en segunda forma normal y todo atributo no primo es implicado por la clave primaria en una secuencia no transitiva.Se eliminan las dependencias transitivas.
Forma normal de Boyce-Codd (FNBC)

Una tabla está en FNBC sí y sólo sí las únicas dependencias funcionales elementales son aquellas en las que la clave primaria determinan un atributo.
## Cuarta Forma Normal (4FN)

Está en forma normal de Boyce-Codd y se eliminan las dependencias multivaluadas y se generan todas las relaciones externas con otras tablas u otras bases de datos.
## Quinta Forma Normal (5FN)

Está en cuarta forma normal y toda dependencia-join viene implicada por claves candidatas.

Lenguaje SQL
El SQL(_Structured Query Language_) es un lenguaje basado en el álgebra relacional donde las consultas se realizan como preguntas formuladas como secuencias de operadores lógicos de dicho álgebra.

## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8dzR3a0M3MGRjTjQ)
 Te vamos a dar una base de datos con el siguiente esquema:

 <center>
   <img style="width: 600px;" src="https://codealab.files.wordpress.com/2015/04/sqlite1.png">
 </center>


 Dentro del prompt de sqlite3 puedes correr el siguiente comando para conocer el esquema de tu base de datos.

 ```
 $ sqlite3 <database_name>
 sqlite> .schema

 ```


### Sentencia SELECT
La sentencia `SELECT` es la que permite consultar sobre la base de datos.
La sintaxis de la sentencia SELECT utilizada en el lenguaje de manupulacion de base de datos SQL es la siguiente:

    SELECT[ALL|DISTINCT] items(s)

    FROM tabla(s)

    [WHERE condición]

    [ORDER BY campo(s)]

    [GROUP BY campo(s)]

    [HAVING condición]

### EJEMPLOS
Descarga el archivo que se te da en el ejercicio y realiza las siguientes consultas para ver el resultado:

 1. `SELECT` * `FROM` Customers;

    SELECCIONA TODAS LAS COLUMNAS de la TABLA Customers

 2. `SELECT` CustomerID `FROM` Customers;

    SELECCIONA SOLO CustomerID de la TABLA Customers

 3. `SELECT` CompanyName `FROM` Customers;

    SELECCIONA SOLO CompanyName de la tabla Customers

Las funciones sobre campos se pueden utilizar son `AVG`(media), `COUNT`(contador), `MIN`(minimo), `MAX`(maximo) y `SUM`(suma).

## WHERE(condición)
* `SELECT` CustomerID `FROM` Customers `WHERE` CustomerID =1;

  Selecciona CustomerID de la TABLA Customers DONDE CustomerID sea igual a 1.

* `SELECT` OrderID ,Quantity `FROM` OrderDetails `WHERE` Quantity >120 ;

  Selecciona OrderID y Quantity de la tabla OrderDetails DONDE Quantity sea mayor a 120.
### Order by
Ordena los datos de salida y cada campo de ordenación corresponde con una columna , pudiendo estar ordenado de manera ascendente (`ASC`) o descendente (`DESC`).

### Group by
Agrupa las filas de salida en función de los valores de las columnas y a la hora de agrupar se pueden poner campos de algunas de las tablas o tambien expresiones numericas y funciones SQL.
### Having
Se utiliza con la clausula GROUP BY para establecer condiciones que deben cumplir los grupos y el formato es igual que en la clausula WHERE.

## ORDER BY, GROUP BY
 `SELECT` Customers.CompanyName,
`COUNT`(Orders.CustomerID)
`FROM` Orders, Customers
`WHERE` Orders.CustomerID = Customers.CustomerID
`GROUP BY` Customers.CompanyName
`ORDER BY` Customers.CompanyName;


SELECCIONA CompanyName de la tabla Customers y CUENTA cuantas ordenes tiene cada compañia
DE las tablas Orders y Customers DONDE el CustomerID de la tabla Orders SEA IGUAL a CustomerID de la tabla Customers, AGRUPAR por CompanyName de la tabla Customers y ORDENAR por CompanyName de la tabla Customers.
