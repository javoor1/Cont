¿Qué modificarías del código para que el programa regrese true en la prueba? No uses otro `if`, ni tampoco `else` en la condición, no elimines código y no modifiques los argumentos del método. No modifiques las pruebas.

```Ruby
def suma(a, b)
  return "#{a} es mayor que #{b}" if a > b
  "#{a} no es mayor que #{b}"
end

#test
p suma(10, 5) == "10 es mayor que 5"
p suma(4, 23) == "4 no es mayor que 23"
```
