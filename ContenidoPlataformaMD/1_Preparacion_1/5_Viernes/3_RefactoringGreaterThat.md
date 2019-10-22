### Operador Ternario
El operador ternario ?: en programación es una forma de hacer operaciones condicionales con 3 parámetros. La forma básica de aplicarlo es la siguiente:

`expresión1 ? expresión2 : expresión3`

> * Se evalúa la expresión1, y si su resultado es verdadero, entonces se evalúa y devuelve como resultado la expresión2.

> * Si expresión1 es falso, se evalúa y devuelve expresión3.

 En este caso, es equivalente a escribir:

```Ruby
if expresión1
  expresión2
else
  expresión3
end
```
### Actividad
Con lo antes mencionado, refactoriza el siguiente código:

```Ruby
def greater_than(a, b)
  if a > b
    "#{a} is greater than #{b}"
  else
    "#{b} is greater than #{a}"
  end
end

#test
p greater_than(56, 70) == "70 is greater than 56"
p greater_than(56, 58) == "58 is greater than 56"
p greater_than(15, 20) == "20 is greater than 15"
```
