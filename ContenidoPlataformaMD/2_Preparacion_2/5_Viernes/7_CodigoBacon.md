El código Bacon es un método para ocultar mensajes ideado por Francis Bacon en 1605.

Cada letra del mensaje se reemplaza por un grupo de `cinco` letras 'A' o 'B', como se muestra en el siguiente hash.
```ruby
   diccionario={"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
            "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
            "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
            "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
            "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}
```
### Actividad
Crea el método `baconian_cipher` que recibe un mensaje oculto con el código Bacon y regresa el mensaje original.

[Código Bacon en Wikipedia](http://es.wikipedia.org/wiki/C%C3%B3digo_Bacon)

```ruby
# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"
```
