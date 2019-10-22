¿Qué comportamiento heredan las clases `Dog` y `Cat` de la superclase? Agrega el código necesario para que las pruebas sean true.

```Ruby
class Animal

end

class Dog

end

class Cat

end

#test
drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"         
# => true
p peto.speak == "Hello!"           
# => true
```
