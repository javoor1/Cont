Después de haber creado linear_search podemos darnos cuenta que revisar numero por numero no es muy eficiente y debe haber una mejor manera de hacerlo.

Cuando eras chico seguramente jugaste este juego:

```
Piensa en un número del 1 al 100.
El número es menor a 50?
- Si
El numero es menor a 25?
- No
Y así hasta agotar las posibilidades.
```

Compara cuantas operaciones realizas si buscas secuencialmente o de esta manera.

Esto es [Binary Search](http://en.wikipedia.org/wiki/Binary_search_algorithm), así de simple.

Aunque según Jon Bentley puso este problema a programadores profesionales y el 90% no pudo crear una implementación correcta después de unas horas de trabajo. Además la misma implementación de Bentley publicada en su libro Programming Pearls en 1986 tenía un error que no fue encontrado durante veinte años.

## Objetivos Académicos

- Uso de condicionales e ciclos
- Comprender como mejorar la eficiencia de un algoritmo

## Actividades

Para este ejercicio es importante crees un Driver Code con muchas pruebas para verificar que tu algoritmo es correcto y que siempre regresa lo mismo.

Para este método es importante que el arreglo este ordenado ascendentemente, tampoco puedes utilizar `Array#index` y te recomendamos mucho que antes de escribir código escribas pseudocódigo.
<br>
<center>
<iframe width="420" height="315" src="https://www.youtube.com/embed/JQhciTuD3E8" frameborder="0" allowfullscreen></iframe>
</center>

Aquí dejamos algunas pruebas para que compruebes que funciona tu implementación.

```Ruby
p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == nil
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4
```
