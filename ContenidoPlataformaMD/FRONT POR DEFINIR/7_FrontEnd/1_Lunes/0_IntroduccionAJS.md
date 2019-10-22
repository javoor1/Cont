Javascript es un lenguaje de programación utilizado para crear pequeños programas encargados de realizar acciones dentro del ámbito de una página web.

 Con Javascript podemos crear efectos especiales en las páginas y definir interactividades con el usuario. El navegador del cliente es el encargado de interpretar las instrucciones Javascript y ejecutarlas para realizar estos efectos e interactividades, de modo que el mayor recurso, y tal vez el único, con que cuenta este lenguaje es el propio navegador.

 Es un lenguaje de programación bastante sencillo y pensado para hacer las cosas con rapidez, a veces con ligereza. Incluso las personas que no tengan una experiencia previa en la programación podrán aprender este lenguaje con facilidad y utilizarlo en toda su potencia con sólo un poco de práctica.

# Variables

 Javascript cuenta con la palabra "var" que utilizaremos cuando queramos declarar una o varias variables. Como es lógico, se utiliza esa palabra para definir la variable antes de utilizarla.

 Al igual que ruby, la forma en la que se les asigna un valor depende del tipo de valor que se quiere almacenar.

 ```javascript
 var iva = 16;        // variable tipo entero
 var total = 234.65;  // variable tipo decimal
 var mensaje = "Bienvenido a nuestro sitio web";  // variable tipo string.

 // Array
 var dias = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]; // variable tipo array

var diaSeleccionado = dias[0];    // diaSeleccionado = "Lunes"

// Booleano

var ivaIncluido = true;
```

# Javascript con HTML

En HTML, el código JavaScript debe insertarse entre las etiquetas `script`
### Actividad
Crea un nuevo archivo html copia y pega el siguiente código, y fijate lo que sucede.
```javascript

<!DOCTYPE html>
<html>

<head>
<script>
function myFunction() {
   document.getElementById("demo").innerHTML = "Paragraph changed.";
}

</script>
</head>

<body>

<h1>A Web Page</h1>
<p id="demo">A Paragraph</p>
<button type="button" onclick="myFunction()">Try it</button>

</body>
</html>
```
 Las funciones en JavaScript se definen mediante la palabra reservada `function`, seguida del nombre de la función.
 En el ejemplo anterior mandamos a llamar a través del botón la función llamada `myFunction` la cual selecciona el elemento con el id `demo` dentro del html para asignarle un nuevo valor.

 ### Ejercicio

Agrega lo faltante al código para poder hacer una suma de números utilizando javascript.
 ```html
 <html>
 <head>
   <script language='javascript'>
   function suma(){
     n1=
     n2=
    res=
    res=parseInt(n1)+parseInt(n2);

   }
   </script>
 </head>
 <body>
   <form name=formulario method=POST>
     <label name=lblnum1>Numero 1:</label>
     <input type=text name='num1'/>

     <label name=lblnum2>Numero 2:</label>
     <input type=text name='num2'/>

     <input type=button value="   +   " onclick="suma()"/>

     <input type=text name='resul'/>
   </form>
 </body>
 </html>
```

# Mas dificultad
Utiliza Bootstrap y lo aprendido en css para poder lograr algo como lo siguiente:

![de esta forma](https://codealab.files.wordpress.com/2017/06/captura-realizada-el-2017-06-14-12-08-29-e1497460514521.png)
