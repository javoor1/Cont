Los métodos son utilizados para agrupar una o mas instrucciones, para ser reutilizadas a los largo del programa con una sola instrucción.
Los nombres de los métodos deben comenzar con letra minúscula, para que el lenguaje no lo confunda con una constante y deben ser definidos antes de su invocación para evitar excepciones.

En el siguiente ejemplo podemos ver que tenemos un metodo llamado **suma** el cual recibe 2 argumentos __a__ y __b__ el cual son sumados y retornados al llamar el metodo.

```Ruby
def suma(a, b)
  a + b
end

#PRUEBAS
p suma(8, 4) == 12
#true
p suma(4, 5) == 9
#true

#Al metodo suma son enviados los argumentos 8 y 4, los cuales son sumados y retornados
#12 ==12 resultara true
```
Un metodo puede aceptar mas argumentos , por ejemplo, la resta de 3 numeros.

```Ruby
def resta(a, b, c)
  a - b - c
end

#PRUEBAS
p resta(8, 4 , 1 )==3
#true
p resta(13, 5 , 2 )==6
#true

```
__Es importante recordar que durante el curso existirán pruebas, las cuales son igualadas al resultado esperado y tienen que imprimir  true__

** Una vez que comprendiste los ejemplos simplemente deja una :) en las respuestas**
