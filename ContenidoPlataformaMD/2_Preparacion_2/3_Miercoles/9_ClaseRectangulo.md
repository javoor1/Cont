Crea los siguientes métodos dentro de la clase `Rectangle`:

```ruby
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end
end
```

- `Rectangle#area`, regresa el área del rectángulo.
- `Rectangle#perimeter`, regresa el perímetro del rectángulo.
- `Rectangle#diagonal`, regresa el tamaño de la diagonal del rectángulo como `Float`.
- `Rectangle#square?`, regresa `true` si el rectángulo es un cuadrado.

```ruby
# Pruebas

rectangle = Rectangle.new(20, 10)
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false

rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true
```

- Learn Ruby the Quick and Easy Way. https://books.google.com.mx/books?id=YCcLNFEfTbEC&pg=PA261&lpg=PA261&dq=rectangle+class+ruby&source=bl&ots=g57MTiNmjR&sig=iyHgLmokTScOmO_4IVitZKZqhq4&hl=es&sa=X&ved=0ahUKEwje2qyr2YzMAhUEl4MKHV8SBdM4ChDoAQhBMAY#v=onepage&q=rectangle%20class%20ruby&f=true
- https://rubymonk.com/learning/books/1-ruby-primer/chapters/7-classes/lessons/40-building-your-own-class
