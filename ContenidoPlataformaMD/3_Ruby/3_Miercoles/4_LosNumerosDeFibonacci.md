**Mathematics is not just solving for X, It is also figuring out WHY. (Arthur Benjamin)**


Las matemáticas nunca dejan de asombrarme y mucho porque están detrás y explican las cosas que más me gustan.

Algún día has visto una flor o un caracol? Atrás de estas figuras están los números de Fibonacci y en muchos patrones de la naturaleza, la arquitectura, el arte, etc.

Te recomiendo ver este vídeo: [The magic of Fibonacci numbers](http://www.ted.com/talks/arthur_benjamin_the_magic_of_fibonacci_numbers#t-361296).    

![alt text](https://codealab.files.wordpress.com/2015/02/fibonacci.png)

### La secuencia de Fibonacci

Esta es parte de la secuencia de números de Fibonacci:

- 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

Si te fijas empezando en el 2 cada número de Fibonacci puede calcularse como la suma de los dos números anteriores de la secuencia.

![alt text](https://codealab.files.wordpress.com/2015/02/fibonacci_sequence.png)   

### Recursos Externos

- [Fibonacci Numbers on Wikipedia](http://en.wikipedia.org/wiki/Fibonacci_number)
- Doodling in Math: Spirals, Fibonacci, and Being a Plant: [Part 1](https://www.youtube.com/watch?v=ahXIMUkSXX0), [Part 2](https://www.youtube.com/watch?v=lOIP_Z_-0Hs), and [Part 3](https://www.youtube.com/watch?v=14-NdQwKz9w)
- [Ruby Kickstart - Introduction to Recursion](http://vimeo.com/24716767)

## Objetivos Académicos

- Modelar un algoritmo matemático en Ruby
- Conocer nuevos Métodos nativos de Ruby
- Practicar el concepto Recursión
- Comprender y analizar la eficiencia de diferentes implementaciones   

## Actividades

Para este ejercicio tendrás que crear de nuevo dos métodos que reciban un integer positivo `n` y regresen el el `nth` fibonacci number, un método iterativo y un método recursivo.

Deberás comparar la eficiencia, pros y contras de las dos implementaciones.

Driver Code:

```
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

```



### Benchmarking

Las computadoras son muy rápidas para realizar procesos pero muchas veces las llevamos al limite o simplemente las ponemos a trabajar demás cuando existen soluciones que pueden ser más eficientes.

Vamos a comparar la eficiencia de estos dos métodos y para ello utilizaremos el modulo de ruby [Benchmark](http://ruby-doc.org//stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html). Deberás correr mil veces cada programa y hacerlo para varios números que no sean muy grandes. Muchas veces las computadoras pueden meter ruido debido a otros procesos que están corriendo por lo que te sugerimos correr varias veces el mismo problema para estar seguros de su resultado.  

Seguramente encontraras que el método recursivo es más lento. Encuentra a que se debe esto y donde esta haciendo trabajo doble tú método. Refactoriza el método y haz que sea más rápido que la otra implementación.

Revisa esta imagen que te dará una pista de que esta pasando:

![alt text](https://codealab.files.wordpress.com/2015/02/fibonacci1.png)
