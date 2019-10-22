Título:
###Ejercicio Métodos 5

Crea el método `envio` que recibe como parámetro `direccion` (tipo string).

Si la `direccion` incluye `Mexico` regresa `"Recibido"`, para cualquier otro caso regresa `"Sólo hacemos entregas a México"`.

```ruby
# Pruebas

p envio('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Recibido"
p envio('Geary Blvd 3320, San Francisco, Estados Unidos') == "Sólo hacemos entregas a México"
```

*TODO INCLUIR respuesta
```ruby
def envio(direccion)
    if direccion.include?("México")
        "Recibido"
    else
        "Sólo hacemos entregas a México"
    end
end
```
