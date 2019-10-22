Hasta ahora todos los programas que has creado si los dejas de correr, desaparece toda la información que tenían guardada. Qué coraje!

Las computadoras para poder comunicarse han creado formatos estándar (ej: XML, JSON, CSV, YAML, etc). Todos estos son basados en texto, lo cual los hace legibles tanto para computadoras como para personas.

No solamente se usan para comunicarse, también para almacenar información. De esta manera la información se puede preservar sin que desaparezca.

En este ejercicio aprenderemos a utilizar el formato CSV. Sabrás leer y sobrescribir información en archivos con este formato.

La información puede estar representada en diferentes formatos dentro de un programa dependiendo el uso que se le esté dando:
Al guardarla el formato que se utiliza es CSV, y para poder procesarla nos conviene tenerla en objetos de Ruby (CSV-land <=> Ruby-land).


## Objetivos Académicos

- Aprender a guardar información.
- Aprender a leer la información posteriormente.
- Conocer el formato CSV.


## Actividades

### Paso 1: Crear la clase Person

Crear la clase Person con los siguientes atributos: first_name, last_name, email, phone, created_at


### Paso 2: Generar información (Faker)

Crear un método que reciba como argumento el número de personas que quieres crear. Y regrese las personas en un arreglo.

Faker es una librería de Ruby que nos permite generar información falsa para poder simular el comportamiento del programa con datos.

Instala Faker desde la consola con:
```
$ gem install faker
```

Un ejemplo del uso de Faker en la consola:

```
$ irb
2.1.3 :001 > require 'faker'
=> true
2.1.3 :002 > Faker::Name.first_name
=> "Shanna"
```

Revisa la documentación de Faker en [github](https://github.com/stympy/faker).


### Paso 3: Guardar información en CSV

Dentro de las librerías de Ruby ya existe una clase para manipular archivos CSV. Busca la sección de cómo escribir un archivo y crea una clase que tendrá como responsabilidad crear archivos CSV. Crea un método que reciba un array y por cada elemento cree una línea en el archivo CSV.
[Ruby CSV](http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html)

Toma como guía este driver code:
```
person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv
```

Después de esto ya debe de existir el archivo en la carpeta desde donde estás ejecutando el código.



### Paso 4: Leer información de CSV

Usa la misma librería de Ruby de CSV para leer el archivo que creaste en el paso anterior. Por cada línea del archivo crea una instancia de la clase Person y guárdalas en un arreglo.

Toma como guía este driver code:
```
parser = PersonParser.new('people.csv')
people = parser.people
```

Muestra en la pantalla las primeras diez personas del archivo.

Modifica algunas de las personas del arreglo y vuelve a salvar el archivo con estos cambios.


NOTA: Al estar guardando en archivos de texto tienes que contemplar los difererentes tipos de datos. Por ejemplo cuando lees las fechas del archivo están como `strings` y para usarlas como fechas de Ruby hay que convertirlas:

```
require 'date'
DateTime.parse("2015-01-01")
```
