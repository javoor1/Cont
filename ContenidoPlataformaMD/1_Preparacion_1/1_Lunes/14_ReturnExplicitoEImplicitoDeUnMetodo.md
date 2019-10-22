Existe una instrucción de control llamada `return` que sirve para salir de un método y devolver algún valor de manera explícita.

```Ruby
def regresa_5
  return 5
end

cinco = regresa_5
puts cinco
#=>5   
```

Es importante notar que si no se usa `return` en un método, automáticamente se devuelve el resultado de la última expresión evaluada. En ruby esta característica del retorno **implícito** es la más usada. El ejemplo anterior quedaría de la siguiente forma:


```Ruby
def regresa_5
  5
end

cinco = regresa_5
puts cinco
#=>5
```

Un método tiene que regresar algo y queda de nosotros si lo imprimimos con  `puts`, `print` o simplemente `p`. Cabe recalcar que si queremos regresar un valor y lo imprimimos con `puts` o `print`, el método no lo regresará si queremos utilizarlo posteriormente.

```Ruby
#Usando puts
def regresa_5
  puts 5
end

cinco = regresa_5
#El método no regresa el valor `5` para sumarlo a 10
puts cinco + 10
#=>undefined method `+' for nil:NilClass (NoMethodError)
```

```Ruby
#Retornando el valor
def regresa_5
  5
end

cinco = regresa_5
#El método regresa el valor `5` para sumarlo a 10
puts cinco + 10
#=>15
```
