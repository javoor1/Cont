## Atributos de una clase

Los `getters` y `setters` son métodos que son responsables de obtener o retornar el valor de una variable (getter) y de asignar un valor a una variable (setter).

```Ruby
class RaceCar

  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  #método getter
  def brand
    @brand
  end

  #método setter
  def brand=(new_brand)
    @brand = new_brand
  end

end

car_1 = RaceCar.new("Mustang", "1970")

#método getter `brand` para obtener name
p car_1.brand
#=>"Mustang"

#método setter `brand` para asignar nuevo valor a name
car_1.brand = "Audi"

p car_1.brand
#=>"Audi"
```

##### Uso de los atributos attr_reader, attr_write y atrr_accessor

En ruby se puede reemplazar el uso de `getter` y `setter` con la declaración de atributos `attr_reader`, `attr_writer` y `attr_accessor`.

Podemos reemplazar el `getter` con `attr_reader`:

```Ruby
class RaceCar
  attr_reader :brand
end
```

También es posible reemplazar el uso de `setter` con `attr_writer`:

```Ruby
class RaceCar
  attr_writer :brand
end
```

Con el uso de `attr_accessor` reemplazamos los `setters` y `getters`, es decir podemos tanto leer el atributo como escribirlo:

```Ruby
class RaceCar
  attr_accessor :brand
end
```

Finalmente, con el uso de cualquiera de los tres tipos de atributos es posible manipular las variables de instancia de un objeto desde afuera de la clase:


```Ruby
class RaceCar
  attr_accessor :brand
  attr_reader :model
  attr_writer :color

  def initialize(brand, model, color)
    @brand = brand
    @model = model
    @color = color
  end

end

car_1 = RaceCar.new("Mustang", "1970", "red")

#reading brand
p car_1.brand
#=>"Mustang"
#writing brand
car_1.brand = "Ferrari"
#reading brand
p car_1.brand
#=>"Ferrari"

#reading model
p car_1.model
#=>"1970"
#writing model
car_1.model = "1980"
#=>...undefined method `model='...

#writing model
car_1.color = "blue"
#reading model
p car_1.color
#=>...undefined method `color'...
```
