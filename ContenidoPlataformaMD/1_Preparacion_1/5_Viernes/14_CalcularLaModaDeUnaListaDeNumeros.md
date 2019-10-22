Crea el método `mode` que recibe como parámetro un `Array` y regresa un `Array` con los números que se repiten más veces.

Si hay un número que se repite más veces que los demás, lo regresa en un `Array` con un solo elemento.

```ruby
# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]
```
