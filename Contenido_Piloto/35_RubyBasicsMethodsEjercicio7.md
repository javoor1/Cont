Título:
###Ejercicio Métodos 7

Define el método comparar que tome dos argumentos, nombre1 y nombre2. Vamos a comparar dos strings, "javier", "JaviER", al compararlas ("javier" == "JaviER") el resultado debe ser igual y regresar true. Pero si comparamos "javier" y "DAVID" ("javier" == "DAVID") debe regresar false.

Hint:
Las strings "javier" y "JaviER" son distintas en un principio, veamos:

2.6.0 :001 > "javier" == "JaviER"
 => false 

¿Cómo podemos hacer las strings iguales?

```ruby
#PRUEBAS
p comparar("javier", "JaviER") == true
p comparar("javier", "DAVID") == false
```


*TODO INCLUIR respuesta
```ruby
def comparar(nombre1, nombre2)
	nombre1 = nombre1.downcase
	nombre2 = nombre2.downcase
	if nombre1 == nombre2
		true
	else
		false
	end
end

#PRUEBAS
p comparar("javier", "JaviER") == true
p comparar("javier", "DAVID") == false
```
