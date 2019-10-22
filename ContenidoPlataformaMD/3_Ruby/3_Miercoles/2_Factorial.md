Otro de los algoritmos más comunes en Computer Science es el factorial. Recuerdas de tus clases de matemáticas cual es el factorial de un numero? Se representa con un signo "!".

El factorial de un entero positivo `n`, o `n` factorial se define en principio como el producto de todos los números enteros positivos desde 1 (es decir, los números naturales) hasta `n`. Por ejemplo:

5! = 5 * 4 * 3 * 2 * 1
6! = 6* 5 * 4 * 3 * 2 * 1
...
n! = n * (n-1) * (n-2)...

El factorial sirve para calcular permutaciones. Por ejemplo pensemos en un anagrama que ya los hemos utilizado antes. Si tienes una palabra de 3 caracteres `ABC` de cuantas maneras la puedes organizar. Esto es cuantos anagramas podrías crear?

- Esto es `3! = 6`:(ABC, BCA, CAB, ACB, BAC, CBA)

La formula del factorial es:

![alt text](http://upload.wikimedia.org/math/d/1/9/d198809e8bde2386224638e0be454243.png "Formula de Factorial")

Si te fijas en la formula del factorial su definición esta basada en términos de otro factorial `(n-1)!`. A esto se le llama una función recursiva. Las funciones recursivas cuentan con un `base_case` y el algunos casos varios de ellos, en este caso es: `n! = 1 if n = 0`. Los `base_case` rompen la recursividad si no sería algo infinito, como pasa en los elevadores cuando te vez en dos espejos.

Este puede ser un concepto difícil de comprender pero como siempre la practica te llevará a comprenderlo totalmente y utilizarlo cuando se necesite.

- [Recursion (computer science)](http://en.wikipedia.org/wiki/Recursion_%28computer_science%29)


## Objetivos Académicos

- Comprender el concepto de recursividad  
- Modelar algoritmos matemáticos comunes  

## Actividades

En este ejercicio implementaremos dos métodos para Factorial, un `factorial_iterative` el cual debe de resolver el factorial sin utilizar la función recursiva y luego un `factorial_recursive`. Regresa a las formulas del factorial para que te des una idea de como resolverlo.

Intenta usar tu función recursiva con números cada vez más grandes y mira que pasa y trata de comprender porque pasa.
