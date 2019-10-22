Título: 
###Ejercicio collect


1.- Busca: documentación de ruby, (asegúrate que venga de los siguientes sitios: https://ruby-doc.org/, https://apidock.com/ruby) y busca los métodos:
    array sort ruby
    array reverse ruby

2.- Crea un archivo con el nombre de este ejercicio y terminación .rb:

ejercicio_collect.rb

3.- Usa el método sort para para ordenar el array numeros:

```ruby
numeros = [35, 854, 23, 1, 1234, 234, 876543]
```

*Respuesta
```ruby
2.4.0 :018 > numeros.sort!
 => [1, 23, 35, 234, 854, 1234, 876543] 
2.4.0 :019 > 
```

4.- Usa el método reverse para cambiar de mayor a menor el array numeros.

*Respuesta


```ruby
2.4.0 :021 > numeros.reverse!
 => [876543, 1234, 854, 234, 35, 23, 1] 
2.4.0 :022 > numeros
 => [876543, 1234, 854, 234, 35, 23, 1] 
```