## Estados y Comportamientos

Cuando definimos una clase podemos necesitar estados y comportamientos. Los estados son datos, variables, propiedades, atributos (ej. nombre, modelo o marca) o constantes. Los comportamientos (métodos) se refieren a las acciones que son capaces de hacer los objetos (acelerar, frenar, etc.).


##### El método initialize

En el siguiente ejemplo...

```Ruby
class RaceCar
  def initialize
  end
end
```

El método initialize sirve para arrancar o construir cada objeto que la clase crea. Puede recibir parámetros que estarán relacionados al comportamiento o estados de la clase.


##### Variables de Instancia y Métodos de Instancia

Tomando como ejemplo la clase `RaceCar` del ejemplo anterior, vamos a crear dos objetos `RaceCar`: uno llamado `"speedy"` y otro `"bolt"`. Los dos son objetos `RaceCar`, sin embargo pueden contener información diferente como `brand` y `model`.  

```Ruby
class RaceCar
  def initialize(brand, model)
  end
end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
```

Para darle seguimiento a esta información de `brand` y `model, se usarán las variables de instancia.

```Ruby
class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end
end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
```

A pesar de que estos objetos son diferentes, ambos aún son objetos o instancias de la clase `RaceCar` y contienen comportamientos idénticos. Por ejemplo, ambos objetos `RaceCar` podrán acelerar, frenar y desarrollar otros comportamientos de un racecar.

```Ruby
class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end

  #comportamiento 1
  def acelerar
    puts "Acelerando"
  end

  #comportamiento 2
  def frenar
  end

  #otros comportamientos...

end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
```

Estos comportamientos se llaman métodos de instancia en una clase. Los métodos de instancia definidos en una clase pueden ser utilizados por objetos o instancias de esa clase.

```Ruby
class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end

  #comportamiento 1
  def acelerar
    puts "Acelerando"
  end

  #comportamiento 2
  def frenar
    puts "Frenando"
  end

  #otros comportamientos...

end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
#método de instancia 'acelerar'
speedy.acelerar
bolt.acelerar
#método de instancia 'frenar'
speedy.frenar
bolt.frenar
```

En resumen, las variables de instancia permiten hacer un seguimiento del estado y los métodos de instancia muestran el comportamiento de los objetos.


## Métodos de Clase

Los métodos de clase son definidos con la palabra reservada `self`.

```Ruby
class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end

  #método de clase
  def self.incrementar_velocidad
     puts "Incrementando velocidad"
  end

end
```

Los métodos de clase no pueden ser llamados por la instancia. Sólo pueden ser llamados usando la clase donde fueron definidos.

```Ruby
class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end

  #método de clase
  def self.incrementar_velocidad
     puts "Incrementando velocidad"
  end

end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
#método de clase
RaceCar.incrementar_velocidad
```

## Variables de clase

Las variables de clase son variables cuyos valores son los mismos para la clase y para todas sus instancias. Para definir una variable de clase se utiliza el símbolo `@@`.

Crearemos una variable de clase y un método de clase para ver esa variable.


```Ruby
class RaceCar
  #variable de clase
  @@number_of_cars = 0

  def initialize
    @@number_of_cars += 1
  end

  def self.number_of_cars
    @@number_of_cars
  end

end

p RaceCar.number_of_cars
#=>0

race_car1 = RaceCar.new

p RaceCar.number_of_cars
#=>1

race_car2 = RaceCar.new
race_car3 = RaceCar.new
race_car4 = RaceCar.new

p RaceCar.number_of_cars
#=>4

```
