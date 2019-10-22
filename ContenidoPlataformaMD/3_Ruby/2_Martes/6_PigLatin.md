Pig Latin es un juego en el que palabras en inglés son alteradas con respecto a una serie de reglas. Los niños juegan a alterar las palabras para crear un idioma en el que puedan comunicarse sin que los adultos u otros niños los entiendan. Seguramente jugaste algo similar cuando eras chico.

Pig Latin se juega de varias maneras pero estas son las reglas que tendrás que seguir para este ejercicio, puedes ver más en:

[Revisa el wiki de pig latin](http://en.wikipedia.org/wiki/Pig_Latin)

1. Para palabras que empiezan con una consonante, esta consonante o todas las que le siguen se mueve al final de la palabra y se le agrega "ay"
. "pig" → "igpay"
. "banana" → "ananabay"
. "trash" → "ashtray"
. "happy" → "appyhay"
. "duck" → "uckday"
. "glove" → "oveglay"

2. Para palabras que empiezan con una vocal solamente se agrega al final "way"
. "egg" → "eggway"
. "apple" → "appleway"
. "I" → "Iway"

## Objetivos Académicos

- Crear un algoritmo que modele un proceso real
- Practicar escribir pseudocódigo
- Aprender escribir código desde pseudocódigo

## Actividades

Tendrás que implementar un método que convierta una palabra a Pig Latin y luego otro que convierta toda una oración.

Te daré el pseudocódigo del primer método, tú tendrás que hacer el del segundo. No escribas ninguna linea de código hasta que tengas los dos métodos en pseudocódigo.

### Pseudocódigo

```
Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word

```
