Usa la herencia para refactorizar el siguiente código...

```Ruby
class Animal

end

class Dog
  def speak
    "Hello!"
  end
end

class Cat
  def speak
    "Hello!"
  end
end

drako = Dog.new
peto = Cat.new
p drako.speak == "Hello!"          
# => true
p peto.speak == "Hello!"           
# => true
```
