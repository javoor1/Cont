Título: 
###if

Repasemos, ¿qué necesitamos para plantear una decisión?

A grandes rasgos sólo dos cosas:
1.- Una condición (o sea algo, una oración, que pueda ser verdadero o falso)
2.- Una nueva condición __O__ una acción que se lleva a cabo en caso de que la condición se cumpla o no se cumpla.

__¿Para qué nos servirán las decisiones?__

Con ellas podremos controlar el flujo de nuestro programa, cada que se presente una decisión tendremos "ramas" por las cuales "fluirá" nuestro programa.

¿Cuál es el caso más fácil de un decisión? 

Si hay pastel de chocolate, entonces compra pastel de chocolate.

Para representar una decisión en Ruby usamos la palabra ___if___

la sintaxis básica de un statement tipo if es:

if condición then(entonces)
    acción(código que se ejecutará si la condición es verdadera)
end

Ve a línea de comandos y a irb.

Vamos a construir una decisión, muy sencilla con una condición MUY sencilla.

PRIMERO busquemos una condición MUY sencilla, algo que sea verdadero o sea falso. Por qué no preguntarle a Ruby si 1 es igual a 1?

```ruby 
2.4.0 :008 > 1 == 1
 => true 
```
Esa condición servirá. Ahora qué acción tomaremos cuando se cumpla (siempre se cumple)? Probemos un simple puts:

```ruby
2.4.0 :009 > if 1 == 1 then
2.4.0 :010 >         puts "1 es igual a 1"
2.4.0 :011?>   end
1 es igual a 1
 => nil 
```

Perfecto, vemos que si 1 == 1 es verdadero entonces Ruby ejecuta el puts.

if es un método y como todo método nos regresa el valor de la última línea que haya ejecutado. En el caso anterior tan sólo imprime en pantalla entonces regresa el objeto nil. Ahora hagamos que regrese algo distinto:

```ruby
amigos = ["Isa", "Alex", "Óliver"]
if amigos.include?("Alex")
    puts "Alex está dentro de tus amigos"
    "Alex"
end

2.4.0 :095 > amigos = ["Isa", "Alex", "Óliver"]
 => ["Isa", "Alex", "Óliver"] 
2.4.0 :096 > if amigos.include?("Alex")
2.4.0 :097?>       puts "Alex está dentro de tus amigos"
2.4.0 :098?>       "Alex"
2.4.0 :099?>   end
Alex está dentro de tus amigos
 => "Alex" 
```
Ahora el método nos regresa el string "Alex" porque fue lo último que ejecutó el programa.

Ahora, una variable puede ser igualada a cualquier data type, entonces podemos hacer el siguiente truco y asignar el resultado del if a una variable llamada amigo_1 

```ruby
amigos = ["Isa", "Alex", "Óliver"]
amigo_1 = if amigos.include?("Alex")
    puts "Alex está dentro de tus amigos"
    "Alex"
end

2.4.0 :105 > amigo_1
 => "Alex" 
```

Nota: la palabra then no es obligatoria pero es considerada una buena práctica incluirla: puedes probar el mismo código sin el then:

if 1 == 1
    puts "1 es igual a 1"
end

Ahora hagamos lo siguiente, tomemos 1 == 2, esto es FALSO, entonces el puts no debería ejecutarse porque sólo se ejecuta si la condición es verdadera.

```ruby
2.4.0 :021 > if 1 < 2 then
2.4.0 :022 >     puts "1 es menor a 2"
2.4.0 :023?>   end
 => nil 
```
En efecto vemos que no imprimió nada, o sea no ejecutó el puts.

Existe una forma más corta de declarar un if determinando primero el código a ejecutar y después la condición. Si notas este método no incluye ni la palabra then ni end. Puede resultar muy útil en ciertas ocasiones y el funcionaiento es idéntico a la sintaxis que hemos visto, sin embargo si las condiciones son muy largas o si existe un else no es recomendable usarlo.

```ruby
2.4.0 :082 >   x = 1
 => 1 
2.4.0 :083 > puts "1 es menor a 2" if x < 2
1 es menor a 2
 => nil 
```

##else
Ahora, un ejemplo donde la condición nos lleva a otras condiciones:
1 es mayor a 3? Definamos x como 1:

```ruby
2.4.0 :038 > x = 1
 => 1 
2.4.0 :039 > if x > 3 then
2.4.0 :040?>       puts "#{x} es mayor a 3"
2.4.0 :041?>   else
2.4.0 :042 >         puts "#{x} es menor o igual a 3"
2.4.0 :043?>   end
1 es menor a 3
 => nil 


else nos ayuda a "ramificar" las decisiones. 
Tenemos un if con una condición x > 3, en caso de que sea VERDADERA se ejecuta puts "#{x} es mayor a 3", 
pero con else podemos ejecutar código en caso de que la condición sea 
puts "#{x} es menor o igual a 3". 
```
else EJECUTA código en caso de que la condición sea falsa.

Una condición puede ser tan compleja como se necesite, al final la condición debe ser un valor verdadero o falso sin importar que tan larga o compleja sea. Construyamos una condición un poco más compleja, primero definamos array con elementos tipo string que serán nombres:

```ruby
array = ["isa", "alex", "césar"]
array.include?("Fernando")

Corramos en irb:

2.4.0 :048 > array = ["isa", "alex", "césar"]
 => ["isa", "alex", "césar"] 
2.4.0 :049 > array.include?("Fernando")
 => false 
```
array.include?("Fernando") nos regresa false. Hagamos lo siguiente, si el array incluye el string "Fernando", entonces lo saluda, si no lo incluye entonces imprime lo que está en el else 

```ruby
2.4.0 :062 > array = ["isa", "alex", "césar"]
 => ["isa", "alex", "césar"] 
2.4.0 :063 > if array.include?("Fernando") then 
2.4.0 :064 >         puts "Hola Fernando"
2.4.0 :065?>   else 
2.4.0 :066 >         puts "Hola #{array[0]}!, Hola #{array[1]}!, Hola #{array[2]}!"
2.4.0 :067?>   end
Hola isa!, Hola alex!, Hola césar!
 => nil 
```

Recuerda, mientras la condición sea algo que regresa true o false puede usarse en un if.

Una forma comprimida de usar un if/else es como un __Operador Ternario__. Esta forma nos permite evaluar una condición como verdadera o falsa y ejecutar código al igual que un if/else pero en una sóla línea.

```ruby
3 == 5 ? "Sí" : "No"

Ejecuta el código en irb:

 => "No" 
```

Lo que va antes de sígno de interrogacion es la condición.
Lo que va entre el signo de interrogación y los dos puntos es el código que se ejecutará en caso de que la condición sea verdadera.
Lo que va al lado derecho de los dos puntos es el código que se ejecutará en caso de que la condición sea falsa (else).

***










