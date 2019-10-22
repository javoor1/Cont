Un promedio es la media aritmética y se calcula sumando un grupo de números y dividiendo a continuación por el recuento de dichos números.


## Objetivos académicos

- Control del Flujo del Código
- Estructuras de control iterativas
- Manejo de arreglos
- Uso de operaciones aritméticas
- Uso de métodos nativos de ruby


## Metodo each

El método __each__ acepta un bloque de código y lo ejecuta por cada elemento de la lista, y el código entre do y end es el bloque en sí mismo.

```ruby

def prueba (arr)
  arr.each do |i|
    #obtiene cada valor del arreglo y lo saca en la variable i
    p i-1
    #imprime el valor obtenido y le resta 1
  end
end

prueba([4,3,2,5])

#=>3
#=>2
#=>1
#=>4
```
## Actividades

Crea el método `average` que recibe como parámetro un `Array` de números y regresa el promedio.
#### Probando el método

Para esto vamos a hacer las siguientes pruebas:

```ruby
# Pruebas
p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875
```

Recuerda que el resultado de las comparaciones debe ser true.
