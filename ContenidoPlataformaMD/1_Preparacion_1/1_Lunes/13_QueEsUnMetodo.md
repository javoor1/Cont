El objetivo de este ejercicio es comprender que es un método en ruby.

Una de las principales cualidades del código es que sea reutilizable. Esto quiere decir que si ya creamos o escribimos un pedazo de código no tenemos que volver a escribirlo de nuevo.

```ruby
def method_name(parameter_1, parameter_2)
    #Código reutilizable
end
```

Cuando te das cuenta que un pedazo de código puede ser utilizado una y otra vez y simplemente hay ciertas partes de él que cambian, podemos convertir este código en un método y reutilizarlo las veces que queramos.

Por ejemplo:

```ruby
puts "hola Javier te envío esta carta para invitarte a un evento en la noche"
puts "hola Alejandro te envío esta carta para invitarte a un evento en la noche"
puts "hola Fernanda te envío esta carta para invitarte a un evento en la noche"
puts "hola Jimena te envío esta carta para invitarte a un evento en la noche"
puts "hola Lucia te envío esta carta para invitarte a un evento en la noche"
puts "hola Alejandra te envío esta carta para invitarte a un evento en la noche"

# Para evitar repetir podemos crear un método y reutilizarlo
# Esta es la forma en la que se define un método

def invitation(name)
 puts "hola #{name} te envío esta carta para invitarte a un evento en la noche"
end

# Esta es la forma en la que se manda a llamar un método
invitation("Javier")
invitation("Alejandro")
invitation("Fernanda")
invitation("Jimena")
invitation("Lucia")
invitation("Alejandra")
```

#### Definición de un método

Un bloque de instrucciones que define un método empieza por la palabra `def` y acaba por la `end`. Una vez definida la palabra reservada `def` se especifica el nombre del método `invitation` seguido de un paréntesis donde se enlistan los parámetros que necesitará éste para funcionar. En este caso `(name)`.

Los parámetros son variables que serán utilizadas por el código dentro del método para poder llevar a cabo su función. Estas variables tomarán para cada caso en específico el valor que se les asigne o mande.


```ruby
def invitation(name)
  puts "hola #{name} te envío esta carta para invitarte a un evento en la noche"
end
```

Finalmente después de definir el método podemos hacer uso de él las veces que queramos. Para mandarlo a llamar simplemente hay que escribir su nombre después entre paréntesis escribir el valor de los argumentos con los que queremos que funcione.

```ruby
invitation("Javier")
invitation("Alejandro")
```

## Ejercicio - Unir Strings

Escribe un método que se llame `sum_words`, este método deberá recibir como parámetros dos `strings`. Y el método deberá regresar como resultado la suma de los dos `strings` o dicho de otra forma juntar los dos `strings`.

**No puedes utilizar interpolación**. **Investiga como unir los strings de otra forma**.

Ej. Dos `strings` como "hola " y "como estas" deberían regresar:
```ruby
"hola como estás"
```

Después de esto manda a llamar al método dos veces con argumentos distintos y verifica que funcione.


Si te estás haciendo bolas entre parámetros y argumentos lee la diferencia aquí.
- [Diferencia entre parámetro y argumento](http://www.alegsa.com.ar/Respuesta/diferencia_entre_parametro_y_argumento_en_programacion.htm)
