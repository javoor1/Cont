Título:
###Ejercicio Métodos 4

Crea el archivo ejercicio_metodos4.rb

Define el método `mayus` que recibe un string como argumento. Dentro del método usa un método para saber el tamaño del string. Si el tamaño del string es mayor a 20 caracteres entonces conviérte TODO el string a mayúsculas.

Copia el códiga para las pruebas, corre el archivo y verifica que tu respuesta sea `true` .

```ruby
#test
p mayus("Este string tiene más de veinte caracteres") == "ESTE STRING TIENE MÁS DE VEINTE CARACTERES"
p mayus("Tengo 19 caracteres") == "Tengo 19 caracteres"
```

*TODO INCLUIR respuesta
```ruby

def mayus(string)
    if string.length >= 20
        string.upcase
    else 
        string
    end

end
```

