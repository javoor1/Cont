¿Sabes qué es un anagrama? un [Anagrama](http://es.wikipedia.org/wiki/Anagrama) es una palabra o frase que resulta de la transposición de letras de otra palabra o frase.

Ej: AMOR, ROMA, OMAR, MORA, RAMO, ARMO y MARO

## Objetivos Académicos

- Definición de métodos, argumentos y valor devuelto  
- Utilizar métodos de Ruby para strings y arrays
- Aprender a separar responsabilidades y a no repetir código

## Actividades

Preguntate, cómo es que sabes tu si una palabra es un anagrama de otra y que proceso mental o físico seguiste para resolverlo. Escribe este proceso en pseudocódigo.

Una vez que tengas el seudocódigo escribe un método llamado `are_anagrams?` que reciba dos palabras, sin importar si existen en un diccionario, y devuelva `true` o `false`.

Existe un principio que explica que cada método o clase que escribes debe solamente tener una responsabilidad.Puede ser que encuentres dentro de tú método un proceso que podría ser un método independiente ya que otros métodos podrían hacer uso de el.

A esto se le llama [Single responsibility principle](http://en.wikipedia.org/wiki/Single_responsibility_principle), y es un principio más amplio pero servirá en este ejercicio para empezar a comprenderlo. Esto también ayuda con el concepto [DRY](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself).

Intenta escribir un método llamado `canonical` que reciba una palabra y la regrese en un formato especifico el cual, si comparas dos anagramas después de mandados a este método sean iguales. No sabes que es canonical visita esta página [Forma Canónica](http://es.wiktionary.org/wiki/forma_can%C3%B3nica)

```ruby

def canonical(word)
  # implementa el formato canonical
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

```  
### Más dificultad

Ahora intenta crear un método que se llame `anagrams_for` el cual deberá recibir una palabra y un arreglo de palabras (un diccionario) y regresar un arreglo de las palabras que sean anagramas de esa palabra o un arreglo vació si no encuentra ninguna.  

Recuerda escribir pseudocódigo y crear pruebas como driver code antes de empezar a escribir.

Finalmente refactoriza tu método. Piensa si existe algún proceso que estés repitiendo varías veces y busca una mejor manera de hacerlo, como pista busca como funciona el método `select`.  
