En los ejercicios anteriores vimos como dejar de escribir SQL, creando métodos de Ruby que se encargan de la comunicación con la base de datos.

Lo que hicimos funciona solamente para la clase Chef. En este ejercicio seguiremos el principio DRY y extraeremos este código para hacerlo genérico y utilizable para diversas clases.

A esto se le llama [ORM](http://en.wikipedia.org/wiki/Object-relational_mapping). El ORM por default y más utilizado en Rails es [ActiveRecord](http://guides.rubyonrails.org/active_record_querying.html). La idea detrás de un ORM es que las clases del modelo (la M de MVC - en este ejercicio las clases Chef y Meal) hereden de una clase base (MiniActive Record) que implemente la funcionalidad general de interacción con la base de datos. Esto puede ser difícil debido a que la clase base no sabe nada de antemano acerca de los atributos que componen a una clase del modelo.


A continuación te mostramos el objetivo del ejercicio:

Al principio recibirás una clase Chef y una Meal con sus métodos correspondientes, si te fijas los metidos de estas dos clases son muy similares.

ej.
``` ruby
module MiniActiveRecord
  class Model
    # ...
  end
end

class Chef < MiniActiveRecord::Model
    def all
      #...
    end

    def where
      #...
    end
end

class Meal < MiniActiveRecord::Model
    def all
      #...
    end

   def where
      #...
    end
end

```

El objetivo del ejercicio es mover estos métodos a una clase padre, para que Chef y Meal hereden los métodos y así refactorizar para evitar duplicidad:

ej,
``` ruby
module MiniActiveRecord
  class Model

    def all
      #...
    end
   def where
      #...
    end
  end

end

class Chef < MiniActiveRecord::Model
  # Esta clase parece vacía pero esta heredando toda la funcionalidad de ActiveRecord
end

class Meal < MiniActiveRecord::Model
  # Esta clase parece vacía pero esta heredando toda la funcionalidad de ActiveRecord
end

```

¿Cómo sabe la clase base del ORM que la clase Chef corresponde a la tabla chefs en la base de datos y cuáles son los atributos que componen a la clase Chef?

En este ejercicio vamos a solucionar e implementar un pequeño ORM.
### Tips

Al pasar los métodos de las clases chef y meal a la clase miniactiverecord necesitarás hacer uso de la `Self Keyword` y de metodos de ruby que te dicen de que clase es un objeto, además del uso de interpolación o concatenación de strings.

Revisa el ejercicio de la semana Programación Orientada a Objetos `OPP` del día Lunes `Self Keyword` para saber cómo utilizar la `Self Keyword`. También puedes revisar el ejercicio de herencia, en particular el método `what_am_i?`.

Recuerda que `self` también cambia dependiendo del contexto en el que se encuentra, no olvides hacer puts para realmente saber el valor de self cuando lo necesites.

```ruby
puts self
puts self.class
```

## Objetivos Académicos

- Comprender la funcionalidad de un ORM.
- Aplicar el principio DRY.
- Familiarizarse con la configuración de una aplicación muy básica.


## Actividades
#### [Descargar Docs](https://drive.google.com/open?id=0ByUoGI7lHNH8WmZwYzB2bVhDRm8)

Te vamos a dar un app que contiene la siguiente relación: Un Chef tiene muchos Meals y un Meal pertenece a un solo Chef.

Dentro del app encontrarás varios archivos que no conoces. La siguiente lista explica cada uno:


- app.rb: Carga los archivos de la aplicación y hace un `require` de las librearías y gemas necesarias.
- Gemfile: Especifica las gemas que utilizará tu aplicación.
- Gemfile.lock: Especifica las gemas instaladas y sus versiones (este archivo se genera automáticamente al hacer `bundle`).
- models: La carpeta que agrupa cada uno de tus modelos.
- models/chef.rb: Contiene la clase Chef.
- models/meal.rb: Contiene la clase Meal.
- models/mini_active_record_model.rb: Contiene la clase que será tu ORM.
- Rakefile: Es una lista de funciones (llamadas rake tasks), utilizadas para llevar a cabo procesos como: crear la base de datos, abrir la consola, correr las pruebas, etc.
- test.rb: Un archivo para escribir el código que probará tu aplicación.


### Paso 1: Instalar las Gemas

Dentro del directorio `mini_active_record` corre el siguiente comando:

```bash
$ bundle
```


### Paso 2: Configura tu base de datos

En este paso se creará la base de datos y las tablas necesarias, además de poblarla con información.


```bash
$ rake db:setup
$ rake db:seed
```


### Paso 3: Empieza a jugar con el app

El siguiente comando abrirá una consola de `irb` cargando automáticamente los archivos necesarios del app.

```bash
$ rake console
```

Corre los siguientes comandos dentro de la consola de irb:

```ruby
chef = Chef.all.first
chef[:first_name]

chef.meals.count

```

Tira tu base de datos con el comando:

Corre `rake db:drop`, `rake db:setup` y `rake db:seed` para hacer un reset de tu base de datos. Esto lo tendrás que hacer varias veces en este ejercicio.


### Paso 4: Escribe pruebas

En el archivo test verás un ejemplo de cómo hacer una prueba. El siguiente paso es crear las pruebas de todos los métodos que aparecen en los archivos `models/chef.rb` y `models/meal.rb` (solamente de los métodos similares), posteriormente corre el archivo `test.rb`.

Estas pruebas nos servirán para estar seguros de que no rompimos nada al refactorizar.

Ejemplo de test:

``` ruby
# Este es un ejemplo de como crear una prueba para el método 'create'.
chef = Chef.create(first_name: "Eduardo", last_name: "Fernández", email:"eduardo@gmail.com", phone:"930-028-2908 x7555",
                          birthday:Time.now)

#Si lees el método create este se compone de los métodos 'new' y 'save' por ello si 'create' funciona los otros dos también.

# Este es un ejemplo de una prueba para el método 'find'.
# Como en la linea pasada creamos al primer chef entonces podemos buscarlo con el id => 1
chef = Chef.find(1)

# Estas son pruebas para el método '[ ]'
# Como sabemos que el chef que creamos se llama 'Eduardo' y apellida 'Fernandez', podemos escribir la siguiente comparación.
assert chef[:first_name] == 'Eduardo'
assert chef[:last_name] == 'Fernández'

```

Si ves que una prueba falla deshaz tus cambios y vuelve a intentarlo. Es importante tirar, crear y poblar la base de datos antes de cada prueba.

Esperemos estes usando `git` y si no mucha suerte!!!

### Paso 5: Refactorizar

Fíjate como los archivos `models/chef.rb` y `models/meal.rb` están repitiendo código al utilizar métodos similares.

Intentaremos refactorizar esto y pasarlo a la clase `mini_active_record_model.rb`. Empezaremos por mover los métodos más simples.

Recuerda tirar tu base de datos cada vez que corras tu archivo de test o comentar las lineas que crean o modifican registros de la misma. Si no haces caso de esto tus pruebas no pasarán ya que la información no será consistente.

Estos son los métodos que deberás mover a MiniActiveRecord::Model:

- Chef#initialize y Meal#initialize a MiniActiveRecord::Model#initialize
- Chef#save y Meal#save a MiniActiveRecord::Model#save
- Chef#[] y Meal#[] a MiniActiveRecord::Model#[]
- Chef#[]= y Meal#[]= a MiniActiveRecord::Model#[]

Puede ser necesario que hagas cambios a los métodos para que sigan funcionando igual que antes. Fíjate que algunos métodos mencionan la clase (Chef o Meal), necesitarás cambiar esto.


### Paso 6: Refactorizar SQL

Los métodos con comandos SQL siguen teniendo mucho código repetido.

- Chef::all y Meal::all a MiniActiveRecord::Model::all
- Chef::create y Meal::create a MiniActiveRecord::Model::create
- Chef::where y Meal::where a MiniActiveRecord::Model::where
- Chef::find y Meal::find a MiniActiveRecord::Model::find
- Chef#new_record? y Meal#new_record? a MiniActiveRecord::Model#new_record?
- Chef#insert! y Meal#insert! a MiniActiveRecord::Model#insert!
- Chef#update! y Meal#update! a MiniActiveRecord::Model#update!

Piensa como la clase MiniActiveRecord::Model sabrá:
- ¿Cuál es la tabla asociada con la clase hija?
- ¿Cuál clase tiene que instanciar al regresar los resultados?
