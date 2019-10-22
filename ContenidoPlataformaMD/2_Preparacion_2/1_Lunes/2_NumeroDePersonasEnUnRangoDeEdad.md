El uso de contadores es útil cuando nos interesa llevar una cuenta dentro de un ciclo. Los contadores son variables que se utilizan para llevar cuentas, tales como sumas, o para contar el número de veces que ocurren las iteraciones.

Una expresión de conteo bastante común es:

```ruby
contador += 1

#la anterior expresión equivale a decir:

contador = contador + 1

```

## Objetivos académicos

- Control del Flujo del Código
- Estructuras de control iterativas
- Manejo de arreglos
- Uso de contadores


## Actividades

Crea el método `total_between_age` que recibe como parámetros:
- Un `Array` con edades
- Edad mínima (`min_age`)
- Edad máxima (`max_age`)

Y regresa cuantas personas del `Array` tienen edad entre `min_age` y `max_age`.

#### Probando el método

Para esto vamos a hacer las siguientes pruebas:

```ruby
# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4
```

Recuerda que el resultado de las comparaciones debe ser true.
