El módulo `Enumerable` de Ruby tiene muchas funciones útiles para trabajar con `Array`.

Lee la documentación de este módulo, algunas de los métodos más utilizados son:
- count
- detect/find
- each_slice
- each_with_index
- find_all/select
- find
- group_by
- inject/reduce
- map
- sort
- zip

Crea los siguientes métodos sin usar `each`.


## Strings en índices nones de un arreglo

Regresa un arreglo con los `Strings` en las posiciones 1, 3, 5, 7, etc.

```ruby
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
```

## Strings de tamaño mayor a 5

Regresa todos los `Strings` que tienen una longitud mayor a 4 caracteres.

```ruby
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
```

## Primer string que empieza con 'h'

Regresa el primer `String` que empieza con la letra 'h'.

```ruby
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
```

## Que todos los strings empiecen con mayúscula

Regresa el mismo `Array` de `String` que recibe pero ahora todos los `Strings` tienen la primera letra mayúscula.

```ruby
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
```


## Agrupar strings por su primera letra

Regresa un `Hash` donde las keys son las primeras letras de los `Strings` y los values son todos los `Strings` que empiezan con esa letra.

```ruby
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
```

## Contar el número de 'r' en un string

Regresa el número de letras 'r' que tiene un string.

```ruby
p number_of_r("ferrocarril") == 4
```

# Código

```ruby
def odd_indexed(arr)
end

def long_strings(arr)
end

def start_with_h(arr)
end

def capitalize_array(arr)
end

def number_of_r(str)
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4
```
