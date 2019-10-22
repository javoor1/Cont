Título:
###Ejercicio Métodos

Crea el archivo ejercicio_metodos.rb

*Invitación*
Define un método que se llame *invitacion_fiesta* y tome como argumento una variable llamada *nombre_invitado*. El método debe usar p para imprimir la invitación.


Vamos a usar *PRUEBAS* para saber si tu código está correcto o no. Copia el siguiente código. Corre el programa y verifica que el resultado de las llamadas al método sean true.

```ruby 
#PRUEBAS
p invitacion_fiesta("Javier") == "Javier, estás invitado a la fiesta para festejar mi graduación de la universidad"

p invitacion_fiesta("César") == "César, estás invitado a la fiesta para festejar mi graduación de la universidad"
p invitacion_fiesta("Arnold") == "Arnold, estás invitado a la fiesta para festejar mi graduación de la universidad"
```

*TODO INCLUIR respuesta
```ruby
def invitacion_fiesta(nombre_invitado)
    p "#{nombre_invitado}, estás invitado a la fiesta para festejar mi graduación de la universidad"
end
```

*suma tres números*

Define el método sumar que tome tres argumentos y los sume. Copia el código de abajo y al correrlo debe regresar true:

```ruby
#PRUEBAS
p suma(2, 8, 15) == 25
#true
p suma(7, 30, 3) == 40
#true
```

*TODO INCLUIR respuesta
```ruby
def suma(num1, num2, num3)
  num1 + num2 + num3
end
```

