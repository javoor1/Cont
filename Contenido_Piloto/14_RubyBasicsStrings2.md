Título: Más métodos para jugar con strings.

El reto pasado vimos métodos para conocer el número de caracteres del string, para acceder a la posición de un string, y para agregar caracteres a un string. En este reto veremos otros.

Cómo cambiar el contenido de un string.
Antes que nada pensemos en algo. Un string es una serie de caracteres. Ese string puede cambiar, o sea que se puede modificar el contenido del string. Supongamos que en un papel yo escribo el nombre "isabel" y me doy cuenta que no puse la letra i en mayúscula, simplemente tomo una goma y borro la letra i minúscula y la CAMBIO por la I mayúscula para obtener "Isabel". En Ruby podemos hacer lo mismo, podemos acceder a cada posición del string y cambiar su contenido.

El contenido de ciertos data types puede cambiarse. Los strings, los arrays y los hashes pueden cambiar su contenido. Supongamos que declaro la variable nombre y por alguna razón quiero cambiar un caracter del string.

saludos = "hola vuenos días"

Para cambiar el caracter v se puede acceder a la posición y asignarle un nuevo valor.

La variable saludos EN LA POSICIÓN 5 ES igual a "v". Antes de cambiar el valor veamos qué contiene:

```ruby
2.4.0 :012 > saludos[5]
 => "v"
```

Ahora cambiemos el valor simplemente diciéndole que sea igual al string "b":

```ruby
2.4.0 :013 > saludos[5] = "b"
 => "b" 
```

Verificamos el valor de la variable saludos:

```ruby
2.4.0 :014 > saludos
 => "hola buenos días" 
```

Ahora, vamos a agregarle al string un símbolo de exlamación "!" al final. La última posición del string es la 15


```ruby
2.4.0 :015 > saludos[15]
 => "s"
```

Si verificamos la posición siguiente que es la que buscamos, Ruby nos dice que el valor de ese string en esa posición es "nil" o sea que no existe ningún valor en esa posición.

```ruby
2.4.0 :016 > saludos[16]
 => nil 
```

Ese valor nil lo vamos a cambiar por "!":

```ruby
2.4.0 :017 > saludos[16] = "!"
 => "!" 
```

Veamos qué valor tiene la variable:

```ruby
2.4.0 :018 > saludos
 => "hola buenos días!"
```

Después de "hola" vamos a poner una coma y un espacio " , "

```ruby
2.4.0 :022 > saludos[4] = ", "
 => ", " 
```

Verifica cuánto vale saludos:

```ruby
2.4.0 :023 > saludos
 => "hola, buenos días!" 
```

#capitalize

Ahora vamos a usar el método capitalize para poner la "h" en mayúscula:

```ruby
saludos.capitalize
 => "Hola, buenos días!" 
```

checamos el valor de la variable saludos


```ruby
2.4.0 :026 > saludos
 => "hola, buenos días!"
```

Veamos que para nuestra sorpresa parece que el cambio no se hubiera guardado, la h sigue en minúscula, a pesar de que arriba Ruby nos dijo que el valor era mayúscula. ¿POR QUÉ?

Esto es porque hay algunos métodos destructivos, estos son los métodos que cambian el valor de la variable y aparte hay métodos no-destructivos que al ocuparlos sólo nos regresan un valor pero no modifican el valor de la variable original. 

Para resolver esto vamos a usar el método capitalize pero con un signo de exlamación al final para volverlo un método destructivo y que cambie el valor de la variable saludos.


```ruby
2.4.0 :027 > saludos.capitalize!
 => "Hola, buenos días!" 
```

Ahora veamos si en realidad hizo el cambio:

```ruby
2.4.0 :028 > saludos
 => "Hola, buenos días!" 
```

PERFECTO!

empty?

Vamos a usar el método empty para saber si un string es vacío, o sea si no tiene caracteres.

Un string vacío se vería más o menos así:

string_vacio = ""

No hay ningún caracter entre las comillas.

Vamos a declararlo nada más para divertirnos:


```ruby
2.4.0 :034 > string_vacio = ""
 => ""
```

Verifiquemos su valor: 

```ruby
2.4.0 :035 > string_vacio
 => ""
```

Ahora vamos a ver si saludos es vacío o no:

```ruby
2.4.0 :033 > saludos.empty?
 => false 
```

Al preguntarle si saludos es vacío, Ruby nos responde con => false, o sea falso. Obviamente la variable saludos no está vacía, tiene varios caracteres: "Hola, buenos días!"

clear
Ahora usemos el método clear para borrar el valor de una variable tipo string.

sabemos que saludos tiene valor "Hola, buenos días!", vamos a dejarla totalmente pelona, sin valor, vacía vaya, como la variable string_vacio que no tiene nada dentro de las comillas.


```ruby
saludos.clear
 => "" 
```

Verificamos el valor y vemos que está vacío, ya no hay nada. Recuerdas que dijimos sobre métodos destructivos? Pues este es uno de ellos. Cambió el valor de la varible.

```ruby
2.4.0 :030 > saludos
 => "" 
```

Ahora si le preguntamos a Ruby si la variable está vacía nos dirá true, o sea verdadero.

```ruby
2.4.0 :031 > saludos.empty?
 => true 
```

Vamos a asignarle un nuevo valor a la variable saludos porque está muy vacía:

saludos = "Hallo"

Hallo es alemán para Hola. Se parece mucho a Hello, no?

include?

Si queremos saber si un string contiene un caracter podemos ocupar el método include? Es un método no-destructivo que simplemente nos va a regresar verdadero o falso.



```ruby
2.4.0 :037 > saludos.include?("j")
 => false
```

Ruby nos dice que saludos no contiene dentro de sus caracteres la letra "j". Eso significa que tampoco contendrá la palabra "jajaja":


```ruby
2.4.0 :037 > saludos.include?("jajaja")
 => false
```

Contiene el caracter "H"?

```ruby
2.4.0 :038 > saludos.include?("H")
 => true 
```

Pues sí, sí lo contiene. Y el caracter "allo"?


```ruby
2.4.0 :042 > saludos.include?("allo")
 => true 
```

Vemos que en efecto el string "Hallo" contiene las letras "allo".

index

Supongamos que tenemos un string muy largo. El himno deportivo universitario de los pumas:

Por su azul y oro
Lucharemos sin cesar
Cubriendo así de gloria
Su nombre inmortal
¡¡méxico, Pumas, Universidad!!

Declaremos la variable pumas y la igualamos al string:

pumas = "Por su azul y oro\nLucharemos sin cesar\nCubriendo así de gloria\nSu nombre inmortal\n¡¡méxico, Pumas, Universidad!!\n\n"

NOTA: \n significa salto de línea, es para que cuando usemos puts para imprimir en pantalla lo que haya después de \n ocupe el siguiente renglón.

Usemos puts para ver qué imprime:


```ruby
2.4.0 :055 > puts pumas
Por su azul y oro
Luchare
mos sin cesar
Cubriendo así de gloria
Su nombre inmortal
¡¡méxico, Pumas, Universidad!!
 => nil 
``

Ahora, vamos a preguntarle a Ruby si dentro de toda esa cadena existe una "L".


```ruby
2.4.0 :056 > pumas.include?("L")
 => true
```

Ruby nos dice que sí, pero no nos dice dónde. Usemos el método index para que nos diga en qué posición, index, del string es que se encuentra el caracter "L".


```ruby
2.4.0 :057 > pumas.index("L")
 => 80 
```

En la posición número 80 (recordemos que si empezamos a contar desde 1 sería la posición 81, porque Ruby cuenta desde 0).

Le podemos preguntar a Ruby no sólo por el caracter sino por varios caracteres, veamos si nos dice en qué posición está la serie de caracteres "méxico".


```ruby
2.4.0 :059 > pumas.index("méxico")
 => 146
```

Encontró "méxico" y el primer caracter se encuentra en la posición 146.

Ahora pongamos méxico con la M mayúscula. Para esto no podemos usar el método .capitalize porque afectaría a TODO el string. Pero podemos acceder a la posición 146 del string y asignarle una "M".


```ruby
2.4.0 :061 > pumas[146] = "M"
 => "M" 
```

Verifiquemos usando el método index para ver si encuentra la "M". 

```ruby
2.4.0 :062 > pumas.index("M")
 => 146 
```

split
Ahora vamos a separar partes de un string. Declaremos la variable saludos como un string que contenga: "Hola! ¿Cómo estás amigo ?"


```ruby
2.4.0 :071 > saludo = "Hola! ¿Cómo estás amigo ?"
 => "Hola! ¿Cómo estás amigo ?" 
```

Ahora usemos el método slice para "rebanar" partes del string. Si notas antes del signo de interrogación ? hay un espacio en blanco, vamos a quitarlo.

Por suerte el error está en la penúltima posición del string, vamos a preguntarle a Ruby el length del string.


```ruby
2.4.0 :073 > saludo.length
 => 25
```

 La variable saludo tiene 25 caracteres, nosotros queremos la posición del caracter 24. Veamos qué hay en la posición 24.


```ruby
 2.4.0 :074 > saludo[24]
 => "?" 
```

 Recuerdas que el index empieza en la posición 0, entonces si queremos el caracter tenemos que decirle que la posición será la 23.


```ruby
 2.4.0 :075 > saludo[23]
 => " "
```

Ahí está ese espacio vacío. Vamos a quitarlo con el método slice!


```ruby
2.4.0 :078 > saludo.slice!(23)
 => " " 
```

El método slice! nos regresa el caracter que "rebanamos"

Ahora veamos el contenido de nuestro string:

```ruby
2.4.0 :079 > saludo
 => "Hola! ¿Cómo estás amigo?" 
```

Perfecto!


Por último ocupemos el método gsub. 

Vamos a ocupar gsub y gusb!, o sea destructivo y no-destructivo. Gsub sirve para encontrar un patrón de caracteres y sustituirlo por otro.

saludos = 'Hello!'

Vamos a introducir como argumento "Hello", sin el signo de exlamación, y vamos a sustituir "Hello" por "Adiós", veamos qué regresa el método.

```ruby
2.4.0 :039 > saludos.gsub('Hello', 'Adiós')
 => "Adiós!"
```

Nos regresa el string "Adiós" con el signo de exlamación al final. Esto porque le dijimos que sólo encontrara los caracteres "Hello". Si hubiéramos incluido el signo de exlamación como parte del argumento nos hubiera regresado sólo "Adiós". Hagámoslo:


```ruby
2.4.0 :040 > saludos.gsub('Hello!', 'Adiós')
 => "Adiós" 
```

Ahora veamos qué pasó con la variable saludos.

```ruby
2.4.0 :038 > saludos
 => "Hello!" 
```

Sigue igual, su valor no cambió. Ahora usemos gsub!

```ruby
2.4.0 :041 > saludos.gsub!('Hello', 'Adiós')
 => "Adiós!" 
```

Verificamos el valor de saludos y vemos que cambió.

```ruby
2.4.0 :042 > saludos
 => "Adiós!" 
```


Revisa los métodos de la documentación oficial de Ruby y juega con ellos:
http://ruby-doc.org/core-2.5.3/String.html


