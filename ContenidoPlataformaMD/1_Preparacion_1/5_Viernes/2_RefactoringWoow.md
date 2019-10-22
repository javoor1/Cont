La función condicional `if` tiene muchas aplicaciones, será uno de los comandos que más utilizarás desde programación básica hasta desarrollo web avanzado y hay diferentes maneras de aplicarlo.

En este punto ya conoces la estructura básica del `if`:

```Ruby
if condition
  "Result"
end
```

Pero hay otras dos que utilizaremos mucho y te pueden ayudar a hacer tu código más elegante y legible.

* `if` de una línea

```Ruby
# la línea se ejecuta si se cumple la condición
flag = true
puts "Yo me imprimo en consola" if flag
flag = false
puts "Yo no me imprimiré" if flag
```

* `Operador ternario`

```Ruby
# este es un ejemplo de cómo se estructura el operador ternario
condition ? true : false # una condición o valor booleano, ?, valor si verdadero, :, valor si falso

# Ej.
flag = true
p flag ? "Verdadero" : "Falso" # == "Verdadero"
flag = false
p flag ? "Verdadero" : "Falso" # == "Falso"
```

### Ejercicio

Refactoriza el siguiente código:

```Ruby
def age(num)
  if num > 10
    "Woow... You are #{num} years old"
  end
end

#test
p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old"
```
