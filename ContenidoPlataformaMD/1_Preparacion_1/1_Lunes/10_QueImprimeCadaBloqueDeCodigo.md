Sin ejecutar el código en consola ¿Qué imprime cada bloque de código? Analiza el código y coloca el resultado en el lugar correspondiente:

```Ruby
operacion1 = (4 < 7 || false) && (true || true)
operacion2 = !(((8 ** 3 == 7 * 7) || !false) && (false && true))
operacion3 = operacion1 == operacion2
p operacion3 == true
#=>Aquí va el resultado de la comparación (true o false)
```

```Ruby
'8' == 8? puts("TRUE") : puts("FALSE")
#=> Aquí va el resultado
```

```Ruby
number = 4
if ((number * 4) / 4) == (12 + 12 - number - 16)
  puts "That's correct"
else
  puts "Think a little"
end
#=> Aquí va el resultado de la comparación
```

```Ruby
num1 = 7
num2 = 5

if num1 + 1 <= num2
  puts "Menor o Igual!"
elsif num1 + 1 >= num2
  puts "Mayor o Igual!"
elsif num2 + 1 == num1
  puts "IGUAL!"
else
  puts "NINGUNO!"
end
#=> Aquí va el resultado de la comparación
```
