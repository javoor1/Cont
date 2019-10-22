Define el método `array_index` que recibe como argumento un array de letras, así como un factor y deberá regresar un arreglo como el siguiente:

```Ruby
p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]
```
>TIPS:
- Ten en cuenta que el factor determina el rango de números que tendrá el subarreglo que se combinará con cada elemento del array de letras.
- Considera que el subarreglo de números deberá ya estar creado cuando comiences a formar el arreglo final.
