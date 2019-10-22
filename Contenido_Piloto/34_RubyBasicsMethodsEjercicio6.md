Título:
###Ejercicio Métodos 6

Este ejercicio será un poco más complicado. No te desesperes.

Crea el método `mensaje_error` que muestre un mensaje de tarjeta inválida al usuario. Este método acepta los parámetros `nombre`, `tipo_tarjeta`, `numero_tarjeta`. 

El tipo de tarjeta debe ser: VISA, MasterCard, o American Express. 

La tarjeta debe tener exactamente 16 dígitos. En caso de tener menos o más hay que rechazarla y mandar un mensaje al usuario con el nombre del usuario y la información de su tarjeta (Tipo de tarjeta VISA, MasterCard, o American Express, y número) que diga: "(nombre), el número de la tarjeta VISA 'xxx-771' es inválido."

Hint:
El nombre del usuario y el tipo de tarjeta ya los tienes y sabes cómo interpolarlos. El único problema es cómo encuentras los últimos 3 dígitos de la tarjeta? 'xxx-520'?

1.- Puedes ocupar el método numero_tarjeta[2, 4] y te devolvería los dígitos entre la posición 2 y 4 de la tarjeta. Nosotros necesitamos el último y tres posiciones antes del último.
numero_tarjeta[última_posición_del_string_menos_tres, última_posición_del_string] 


```ruby
#PRUEBAS
p mensaje_error('Javier', 'MasterCard', '205782460166771') == "Javier, la tarjeta MasterCard con terminación en 'xxx-771' es inválida."
p mensaje_error('Karen', 'Visa', '78032809781234881') == "Karen, la tarjeta Visa con terminación en 'xxx-881' es inválida."
```

*TODO INCLUIR respuesta
```ruby
def mensaje_error(nombre, tipo_tarjeta, numero_tarjeta)
    p numero_tarjeta[numero_tarjeta.length-3, numero_tarjeta.length-1]
    if numero_tarjeta.length != 16
        "#{nombre}, la tarjeta #{tipo_tarjeta} con terminación en 'xxx-#{numero_tarjeta[numero_tarjeta.length-3, numero_tarjeta.length-1]}' es inválida."
    end
end
```
