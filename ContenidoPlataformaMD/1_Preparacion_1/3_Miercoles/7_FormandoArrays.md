Define el método `array_index` que recibe como argumento un array de letras, así como un factor y deberá regresar un arreglo como el siguiente:

```Ruby
#test
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]
```
>TIPS:
- Fíjate como el factor determina el número de veces que se repetirá el proceso de juntar las letras con el número de vueltas en las que va el factor.
