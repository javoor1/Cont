Define los métodos `private` y `protected` para calcular la edad del gato, así como también agrega el código que se necesita para que la prueba correspondiente sea true. Revisa la documentación correspondiente.

```Ruby
class Cat
  CAT_YEARS = 7

  def es_mayor_que?
    age > age
  end

  protected

  ...

  private

  ...

end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true

```
