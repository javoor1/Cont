## Métodos de String

Son métodos de ruby que sirven para manipular cadenas de caracteres. Algunos de los métodos de string más usados son:

```ruby
#[]
frutas = ["fresa", "durazno"]
p frutas[0]
#=>"fresa"

#[]=
frutas = ["fresa", "durazno"]
frutas[1] = "mango"
p frutas
#=>["fresa", "mango"]

#capitalize
x = "welcome"
p x.capitalize
#=>"Welcome"

#chr
word = "programación"
p word.chr
#=>"p"

#count
saludo = "Hola"
p saludo.count("l")
#=>1

#empty?
nada = ""
p nada.empty?
#=>true

#sub
p "hello".sub(/e/, '*')
#=>"h*llo"

#gsub
p "hello".gsub(/[e,o,l]/, '*')
#=>"h****"

#include?
lugar = "Mexico"
p lugar.include? "x"
#=>true

#index
numeros = [1, 0, 23, 45]
p numeros.index(23)
#=>2

#reverse
saludo = "Hola"
p saludo.reverse
#=>"aloH"

#split
saludo = "Hola como estas?"
p saludo.split
#=>["Hola", "como", "estas?"]

#strip
invitacion = " Vamos a Mexico "
p invitacion.strip
#=>"Vamos a Mexico"

#length
invitacion = "Vamos a Mexico"
p invitacion.length
#=>14

#upcase
first_name = "Carlos"
p first_name.upcase
#=>"CARLOS"

#downcase
first_name = "Carlos"
p first_name.downcase
#=>"carlos"
```

## Ejercicio - Detectando la Palabra Visa

Crea la variable `payment` y asígnale el valor `'Welcome, your Visa Credit Card has been processed'`. Imprime `"Credit Card has been Charged` si la variable `payment` incluye la palabra `Visa`, para cualquier otro caso imprime `"We only accept visa credit card"`.

## Ejercicio - Saludar un Usuario Mayor de Edad

Crea las variables `name` y `age` y asígnales valores. Imprime `"Welcome"` si el nombre asignado a la variable `name` es tu mismo nombre y además el usuario es mayor de edad, para cualquier otro nombre y edad imprime `"No eres Mayor de Edad"`.
