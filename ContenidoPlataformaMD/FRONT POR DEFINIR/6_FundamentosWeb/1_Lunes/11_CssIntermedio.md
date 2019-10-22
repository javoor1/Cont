## Selectores descendentes

Se ocupan para afectar a todos los elementos que pertenecen (o descienden) de una determinada etiqueta padre. Esto es muy común y hace falta sólo el ejemplo en CSS para que se den cuenta de lo que me refiero:

Ejemplo Selectores Descendentes:

```CSS

ul a {
     color: red;
}
````
En el ejemplo anterior, vemos que el color rojo se aplicará solamente a los enlaces `<a>` que estén dentro de un `<ul>`, y no a otros. Si queremos ser más específicos, podemos definir id‘s o clases:

```CSS
.menu a {
     color: red;
}
```

Aquí el color rojo estará en toda etiqueta que tenga una `class="menu"`. Y siendo más específico aún, podemos definir si esa class pertenece a cierta etiqueta:

```CSS
ul.menu a {
     color: red;
}
```

Aquí sólo se verá el rojo del link si está dentro de un `<ul class="menu">` y no otra etiqueta con esa misma class.


## Selectores hijo

Se usa para afectar a uno hijo de determinado elemento.

```CSS

ul li > a {
     color: red;
}
```

Hasta aquí suena igual que los selectores descendentes. La diferencia es que con los selectores hijo afectarán solamente los links que estén dentro del `<li>` y no dentro de otra sub etiqueta.

```HTML
<ul>
     <li><a href="">Link 1</a></li>
     <li><em><a href="">Link 1</a></em></li>
</ul>
```

Usando el ejemplo anterior, veremos que utilizando los selectores hijos el color rojo se aplicará sólo al `<a>` contenido dentro del `<li>`, y no al que está dentro de `<em>` ya que pasó a ser su hijo y no del `<li>` (imagina que ahora es su nieto).

## Selector de atributos

El último tipo de selectores avanzados lo forman los selectores de atributos, que permiten seleccionar elementos HTML en función de sus atributos y/o valores de esos atributos.

Los cuatro tipos de selectores de atributos son:

[nombre_atributo], selecciona los elementos que tienen establecido el atributo llamado nombre_atributo, independientemente de su valor.
[nombre_atributo=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo con un valor igual a valor.
[nombre_atributo~=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y cuyo valor es una lista de palabras separadas por espacios en blanco en la que al menos una de ellas es exactamente igual a valor.
[nombre_atributo|=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y cuyo valor es una serie de palabras separadas con guiones, pero que comienza con valor. Este tipo de selector sólo es útil para los atributos de tipo lang que indican el idioma del contenido del elemento.

A continuación se muestran algunos ejemplos de estos tipos de selectores:

```CSS
/* Se muestran de color azul todos los enlaces que tengan
   un atributo "class", independientemente de su valor */

a[class] { color: blue; }

/* Se muestran de color azul todos los enlaces que tengan
   un atributo "class" con el valor "externo" */
a[class="externo"] { color: blue; }

/* Se muestran de color azul todos los enlaces que apunten
   al sitio "http://www.ejemplo.com" */
a[href="http://www.ejemplo.com"] { color: blue; }

/* Se muestran de color azul todos los enlaces que tengan
   un atributo "class" en el que al menos uno de sus valores
   sea "externo" */
a[class~="externo"] { color: blue; }

/* Selecciona todos los elementos de la página cuyo atributo
   "lang" sea igual a "en", es decir, todos los elementos en inglés */
*[lang=en] { ... }

/* Selecciona todos los elementos de la página cuyo atributo
   "lang" empiece por "es", es decir, "es", "es-ES", "es-AR", etc. */
*[lang|="es"] { color : red }

```

## Estilo Visibility CSS


El estilo CSS visibility de una capa controla si ésta será visualizada o no. Para determinar eso, posee dos valores: “visible” y “hidden”. La característica de este estilo es que aunque el elemento no sea visible, continúa ocupando su espacio en el flujo del HTML. Todo lo contrario ocurre con el estilo “display”, que veremos a continuación.

## Estilo Display CSS

El estilo CSS display se diferencia de “visibility” en que éste puede reservar o no el espacio del elemento invisible en el flujo de html. Para que no reserve el espacio se ha de usar el valor “none”.

Display tiene tres valores más: “block”, que muestra un salto de línea antes y después del documento, “inline”, que no muestra ningún salto de línea, y “list-item”, que actúa igual que block en cuánto al espaciado, pero que añade un marcador de ítems de lista.

## Estilo Float y Clear

El estilo “float” sirve para alinear un elemento, haciendo que el texto de alrededor del mismo se agrupe entorno a dicho elemento. Sus posibles valores son “left” (para alinear el elemento a la izquierda) y “right” (para alinearlo a la derecha).Un elemento con float CSS debe tener definida su anchura. De no ser así, no será tratado como tal y el estilo no se aplicará.

El estilo “clear” se utiliza conjuntamente con float. Utilizamos este estilo cuándo queremos que elementos que tienen cerca un elemento flotante (mediante “float”) dejen de alinearse junto a él.

Sus posibles valores son clear left (el elemento no permite flotantes a su izquierda ), clear right (el elemento no permite flotantes a su derecha ) o clear both (el elemento no permite flotantes a ningún lado).

# Ejercicio - Selectores Descendentes

Crea el archivo CSS y agrega el código necesario para que la siguiente página HTML muestre los textos en color tal y como se piden, usando los selectores descendentes adecuados:

```HTML
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CSSLab: selectores descendentes</title>

</head>

<body>

<h1>CSSLab: selectores descendentes</h1>

<div id="ejemplo1">
  <h2>Vínculos en azul</h2>
    <ul>
        <li><a href="">Este deberá ser azul</a></li>
        <li><em><a href="">Este también deberá ser azul</a></em></li>
    </ul>
</div>

<div id="ejemplo2">
  <h2>Clase menu</h2>
    <ul id="ejemplo2">
        <li class="menu"><a href="">Este deberá ser verde</a></em></a></li>
        <li><em><a href="">Este no tiene ninguna class</a></em></li>
    </ul>
</div>

<div id="ejemplo3">
    <h2>Vínculo y clase menu</h2>
    <ul id="ejemplo3">
        <li class="menu"><a href="">Este tiene una clase menu</a></li>
        <li><a href="">Este no tiene ninguna class</a></li>
        <li><em><a href="" class="menu">Este tiene una clase menu y deberá ser verde</a></em></li>
    </ul>
</div>

</body>
</html>
```

# Ejercicio - Selectores Hijos

Crea el archivo CSS y agrega el código necesario para que la siguiente página HTML muestre el texto en color tal y como se pide, usando los selectores hijos adecuados:

```HTML

<!DOCTYPE html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CSSLab: selectores hijo</title>

</head>

<body>

<h1>CSSLab: selectores hijo</h1>
<h2>Vínculo directo de li</h2>
<ul>
  <li><a href="">Este es hijo de li por lo que será naranja</a></li>
  <li><em><a href="">Ya este está dentro de un em y ya no es hijo directo de li</a></em></li>
</ul>


</body>
</html>

```

# Agregando un Video a tu pagina
A lo que acabas de realizar insertarle un video de `youtube` de tu preferencia, es bastante sencillo dirigete a tu video de tu gusto, dale click derecho y selecciona la opcion `copy embed code` copialo en tu html y listo.

 ![Codea](https://codealab.files.wordpress.com/2017/06/captura-realizada-el-2017-06-22-18-57-111-e1498176652240.png)
