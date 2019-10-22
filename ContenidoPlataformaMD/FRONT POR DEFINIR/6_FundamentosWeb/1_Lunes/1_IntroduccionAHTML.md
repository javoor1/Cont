## HTML

Es un lenguaje de marcado que se utiliza universalmente para la creación de páginas web, será el esqueleto con el que crearás la vista de tus aplicaciones.

Estas son las etiquetas principales que utilizarás, pero existen muchas más y te invitamos a poco a poco irlas descubriendo.

## Estructura básica de un documento HTML


```HTML
<!DOCTYPE html>                   <!-- Instrucción para el web browser acerca de la versión usada de HTML en la página. La declaración '<!DOCTYPE html>' es para HTML5. -->

<html>                            <!-- Elemento para indicarle al browser que este es un documento HTML. Representa la raíz de un documento HTML. -->
<head>                            <!-- Elemento que sirve como contenedor para todos los elementos de la cabecera. Puede incluir un título para el documento, scripts, estilos, meta información, etc. -->
  <meta charset="utf-8">          <!-- Elemento que provee información acerca del dato. En este caso 'charset' especifica la codificación de los caracteres en el documento html. -->
  <title>Aprendiendo HTML</title> <!-- Elemento que define el título del documento. -->
</head>
<body>                            <!-- Elemento que define el cuerpo del documento, contiene todo el contenido del documento HTML (texto, vínculos, imágenes, tablas, listas, etc.). -->
  <!-- Ejemplo de la estructura básica de un documento HTML -->
</body>
</html>

```
## Encabezados h1 - h6

Los tags `<h1>` hasta `<h6>` son usados para crear encabezados o títulos en una página. `<h1>` es el tamaño más grande y `<h6>` es el más pequeño.

Generalmente estos tags son usados como títulos o para describir brevemente el contenido debajo de ellos (párrafos, etc.).

##### Crea el archivo basics.html, copia este código de ejemplo y te recomendamos abrirlo en Chrome para que veas el resultado de esta estructura básica.

```HTML

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Tags: h1 - h6</title>
</head>
<body>
  <h1>Strings</h1>
  <h2>Fixnum - Integer y Float</h2>
  <h3>Boolean</h3>
  <h4>Array</h4>
  <h5>Hash</h5>
  <h6>Symbol</h6>
</body>
</html>
```

### Ejercicio - Básico de Tags h1 - h6

- Crea 3 etiquetas h1, 4 etiquetas h2 y 1 de las restantes. Usa texto de tu elección.

##### Copia el siguiente código a una archivo nuevo. Recuerda guardar tu archivo con extensión `.html` y probarlo en tu navegador web.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Aprendiendo HTML</title>
</head>
<body>
  <!-- Agrega todos tus ejercicios después de esta línea y antes de la etiqueta de cierre </body> -->
</body>
</html>

```

## Párrafos

El tag `<p>` define un párrafo de texto. Dentro de un párrafo, todos los espacios, tabuladores y saltos de línea cuentan como un espacio simple.

```HTML
  <p>Los strings o cadenas de texto son secuencias de caracteres. La sintaxis para definirlos es utilizando comillas simples o comillas dobles.</p>
  <p>Existen dentro de los datos numéricos (Fixnum)  muchas categorías las más comunes son Integer y Float. Los números enteros son llamados integers y los números con decimales son llamados flotantes (floats).</p>
  <p>El tipo de dato booleano es aquel que solamente puede tomar dos posibles valores. En Ruby estos dos valores son representados por true y false (verdadero y falso).</p>
  <p>Es una lista de datos ordenados numéricamente. Un arreglo puede contener strings, integers, hashes, objetos y otros arreglos.
</p>
  <p>Un Hash es una colección de pares (clave-valor o 'key-value') como "empleado" => "salario". </p>
  <p>Los símbolos en ruby son un tipo de dato especial y son algo difícil de comprender. Por ahora lo único que necesitas comprender es que el símbolo es similar al String, pero a nivel memoria se guarda de manera distinta. </p>
```

### Ejercicio - Uniendo tags y párrafos

- Crea los siguientes títulos: `string`, `array` y `symbol` con los tags `h1 - h6` de tu preferencia, posteriormente agrega una breve definición del concepto (título) correspondiente usando `párrafos`.

##### Agrega este y los siguientes ejercicios debajo de las etiquetas del anterior para que formes una sola página web.


```HTML
  <!-- Título -->
  <h1>Symbols</h1>
  <!-- Definición -->
  <p>Mi tipo de dato favorito</p>
```

## Saltos de línea

El tag `<br>` es usado para colocar un salto de línea en un párrafo. El tag `<br>` no tiene un tag de cierre `</br>`.

```HTML
  <p>Existen dentro de los datos numéricos (Fixnum)  muchas categorías las más comunes son Integer y Float. Los números enteros son llamados integers y los números con decimales son llamados flotantes (floats).</p>
  <p>Un Hash es una colección de pares (clave-valor o 'key-value') como "empleado" => "salario". </p>
  <br>
  <p>Los símbolos en ruby son un tipo de dato especial y son algo difícil de comprender. Por ahora lo único que necesitas comprender es que el símbolo es similar al String, pero a nivel memoria se guarda de manera distinta. </p>
</body>
</html>
```

### Ejercicio

- Agrega por lo menos 5 etiquetas `<br>` a tu archivo.

## Listas

Los tags `<ul>`, `<ol>` y `<li>` son usados para crear listas.

Cuando sea necesario tener una lista no ordenada (con viñetas) puedes usar `<ul>`, si es necesario una lista ordenada (con números) puedes usar `<ol>`.

Dentro de cada lista, cada elemento debe empezar con el tag `<li>`. Es importante mencionar que los elementos no necesitan finalizar con el tag `</li>`, sin embargo es preferible colocarlo.

Los elementos de la lista pueden contener otros tags de html, también pueden incluir otra lista para crear `listas anidadas`.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Listas</title>
</head>
<body>
  <h2>Lista de tareas</h2>

  <ul>
    <li>Estudiar Programación</li>
    <li>Hacer Ejercicio</li>
    <li>Dormir</li>
  </ul>

  <h3>Lenguajes de Programación</h3>

  <ol>
  	<li>Ruby</li>
        <li>Python</li>
        <li>C++</li>
  </ol>

</body>
</html>

```

### Ejercicio - Uniendo listas

Crea el código necesario para lograr la siguiente estructura de lista anidada en tu archivo:

```Ruby
  Tipos de Datos                     #Título

    1.String                         #Lista ordenada
          - "Hola Mundo"               #Lista no ordenada
          - "Codear"
    2.Array
          - [1, 3]
          - ["Codear", "Codeando"]

```


## Énfasis

Los tags `<strong>` y `<em>` son usados para enfatizar partes de un texto. `<strong>` es usado en partes que denotan importancia, urgencia o recalcar que una frase es clave dentro del contexto. `<strong>` sirve para dar mucho énfasis a un texto y el tag `<em>` sirve para dar énfasis. El tag `<em>` enfatiza un texto con un tono diferente de voz. Ambos tags pueden ser usados juntos en las partes de un texto que tenga sentido.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Énfasis</title>
</head>
<body>
  <h2>Lista de tareas</h2>

  <ul>
    <li><em>Estudiar Programación</em></li>
    <li><em>Hacer Ejercicio</em></li>
    <li><em>Dormir</em></li>
  </ul>

  <p>Un <strong>Hash</strong> es una <em>colección de pares <strong>(clave-valor o 'key-value')</strong></em> como <em>"empleado" => "salario"</em>. </p>

</body>
</html>

```

### Ejercicio
- Encuentra las partes de tu página web que necesiten enfatizarse y agrega por lo menos una etiqueta `strong`, una `em` y una combinación.

## Vínculos

El tag `<a>` es usado para vincular o enlazar un sitio y también para vincular a partes del mismo sitio. Usa el atributo `href`para indicar hacia donde debería navegar el browser.

Para navegar a una URL externa debería empezar con `http://` o `https://`.

En caso de navegar en la misma página, entonces debería empezar con un `#` y posteriormente usar el atributo `id`  del tag hacia donde navegar (p.e. #main). Esto se conoce como anclas.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Vínculos</title>
</head>
<body>
  <h3>Lenguajes de Programación</h3>

  <ol>
    <li><a href="https://es.wikipedia.org/wiki/Ruby">Ruby</a></li>
    <li><a href="https://www.python.org/">Python</a></li>
    <li><a href="https://www.tutorialspoint.com/cplusplus/cpp_basic_syntax.htm">C++</a></li>
  </ol>

  <p>Es tiempo de <a href="http://www.codea.mx/">codear</a>.</p>

</body>
</html>
```
### Ejercicio

- Agrega 2 links de tu preferencia a tu página web.

## Imágenes

El tag `<img>` es usado para insertar imágenes dentro de la página, se requieren dos atributos: `src` (URL de la imagen) y `alt` (una descripción de la imagen). Tiene otros atributos opcionales como `width` (ancho de la página), `height` (altura de la imagen), etc.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Imágenes</title>
</head>
<body>
  <h3>CodeaCamp</h3>

  <img src="https://pbs.twimg.com/media/ClfUa-hWYAELhaa.jpg" border="0" width="500" height="250">

  <p>Es tiempo de <a href="http://www.codea.mx/">codear</a>.</p>

</body>
</html>

```

### Ejercicio

- Estoy seguro de que tu página se vería mejor con por lo menos 2 imágenes :D

## Tablas

El tag `<table>` es usado para el formato de tabla. El tag `<table>` debe contener  todos los tags hijos necesarios para formatear los datos de las cabeceras, filas y columnas.

Una tabla debería empezar con una cabecera de fila con los nombres de las columnas. El elemento `thead` se usa para formar el área de cabecera, el elemento `tr` crea una fila y los `th`se usan para crear las celdas en la fila. El tag `tbody`empieza el área de datos.

```HTML
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Imágenes</title>
</head>
<body>
  <h3>Bootcamps de Programación Web</h3>
  <table>
    <thead>
      <tr>
          <th>Empresa</th>
          <th>Link</th>
      </tr>
    </thead>
    <tbody>
      <tr>
          <td>CodeaCamp</td>
          <td><a href="http://www.codea.mx/">Es tiempo de Codear</a></td>
      </tr>
    </tbody>
  </table>
</body>
</html>

```

### Ejercicio - Datos de Empresa

Agrega a tu página web una tabla que muestre los datos (nombre, email, link de web/facebook y hobbies) de cinco personas incluyendo su foto. No es necesario que los datos sean reales.

<br><br>

#### Todas las etiquetas de HTML pueden tener diversos atributos, `class` y `id` serán los más utilizados y se representan así:

<center><h3>`<h1 id="titulo_1" class="titulo_principal">Hola mundo</h1>`</h3></center>


<br><br>
Revisa el ejercicio siguiente, [Publicando mi página web](http://www.locomotion.mx/challenges/457/?course=11&week=68&day=5), y sube la página web que desarrollaste en este reto y pega el link como respuesta.
