Título: Ejercicio

Ve a irb.

1.- Declara la variable nombre como tipo string que contenga el nombre Diana.

Usa el método puts para imprimir:

Hola Diana!


2.- Declara las variables: 
a = "libros, " 
b = "cuadernos, " 
c = "lápices" 
utiles_escolares = ""

Usa alguna forma del método concat ( << o .concat() para concatenar a, b, y c a la variable utiles_escolares.

CORROBORA

```ruby
 puts utiles_escolares == "libros, cuadernos, lápices" 
```
true

Solución:

```ruby
utiles_escolares = a<<b<<c
```

3.- Declara la variable a = "muchas letras", usa el método .length para saber el valor de la variable.

CORROBORA
```ruby
puts a.length == 13
```
true