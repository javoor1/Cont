Título:
###Ejercicio Métodos 2

El siguiente código tiene un error. Crea un archivo llamado
ejercicio_metodos2.rb

Copia y pega el codigo de abajo en tu archivo, guárdalo y corre el programa.


```ruby
def mayor_menor(num1, num2)
  "#{num1} es mayor que #{num2}" if num1 > num2
  "#{num1} no es mayor que #{num2}"
end

#PRUEBAS
p mayor_menor(10, 5) == "10 es mayor que 5"
p mayor_menor(4, 23) == "4 no es mayor que 23"
```

Ves que la primera prueba *p mayor_menor(10, 5) == "10 es mayor que 5"* nos da false. ¿Por qué?

mayor_menor recibe dos argumentos: num1 y num2. Si num1 es mayor a num2 entonces entra en el if. Pero de todas formas ruby seguirá y leerá la siguiente línea de código y *"#{num1} no es mayor que #{num2}"* y este será el *return implícito*. Esto es un problema porque a pesar de que el if se cumple y en efecto num1 es mayor que num2 el método nos regresa la línea de abajo que no deseamos! 

Arregla el código con un return.


*TODO INCLUIR respuesta
```ruby 
def mayor_menor(num1, num2)
  return "#{num1} es mayor que #{num2}" if num1 > num2
  "#{num1} no es mayor que #{num2}"
end

#PRUEBAS
p mayor_menor(10, 5) == "10 es mayor que 5"
p mayor_menor(4, 23) == "4 no es mayor que 23"
```
