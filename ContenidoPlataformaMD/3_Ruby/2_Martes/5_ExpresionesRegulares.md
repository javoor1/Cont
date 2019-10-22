Cuando se trata de trabajar, procesar y manipular un `string` las expresiones regulares son una herramienta muy poderosa. Aunque puede parecer complicado entender como usarlas una vez que las empiezas a usar comprenderás su poder y la elegancia con la que manipulan `strings`. Muchos de los métodos nativos de Ruby para `strings` utilizan estas expresiones.   

Las Expresiones regulares se utilizan mucho en las barras de búsqueda o buscadores para poder ir encontrando patrones en textos.

## Enlaces Externos

Te recomendamos mucho leer estos enlaces te serán de mucha ayuda.

- [Ruby for Newbies](http://code.tutsplus.com/tutorials/ruby-for-newbies-regular-expressions--net-19812)
- [rubular.com](http://rubular.com/)
- [Regex 101](https://regex101.com/)
- [Pickaxe Guide](http://ruby-doc.com/docs/ProgrammingRuby/#UJ)
- [Regex Overview](https://www.bluebox.net/insight/blog-article/using-regular-expressions-in-ruby-part-1-of-3)

## Objetivos Académicos

- Comprender la sintaxis de las expresiones regulares
- Aprender a usar expresiones regulares junto con métodos de Ruby  

## Actividades

Deberás completar los siguientes métodos para que realicen lo que se indica en el comentario.

Un banco utiliza el siguiente formato en sus números de cuenta: "1234-123-123"

Crea los siguientes métodos que reciban un `string` parecido a los siguientes:

```ruby
string_con_un_numero_de_cuenta = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
string_con_un_numero_de_cuenta_no_valido = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
string_con_mas_de_un_numero_de_cuenta = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"
```


 Piensa bien como nombrar a cada uno. Adicional deberás crear cuatro pruebas en el Driver Code para cada método.

Métodos:  

- Regresa true si encuentra un numero de cuenta.
- Regresa un número de cuenta si existe dentro del `string` y `nil` en el caso contrario.
- Regresa un `array` con los números de cuenta que existen dentro del `string` y un `array` vacío en el caso contrario.
- Regresa un `string` donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
- Regresa un `string` formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
