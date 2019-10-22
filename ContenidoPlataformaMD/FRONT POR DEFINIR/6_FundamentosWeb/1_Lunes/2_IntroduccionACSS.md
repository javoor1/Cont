## CSS

`CSS (Cascading Style Sheet)` es quien define CÓMO deben ser mostrados los elementos `HTML`, es una convención para hacer hojas que estilos que nace ante la necesidad de separar el estilo del contenido, nos permite usar selectores para dar elementos de diseño a nuestras etiquetas `HTML`, mejorando la presentación de las mismas

Existen 3 maneras de agregar contenido `CSS` a tus páginas web:

### Inline Style
Se pone dentro de alguna etiqueta de `HTML` y afecta solamente a esa etiqueta.

  `<p style="color:blue;font-size:35px">Yo quiero ser azul cuando sea grande</p>`

### Internal Stylesheet
Se pone dentro del archivo `.html` dentro de una etiqueta `<style>`.
 ```
  <style>
    h1{
      color:blue;
      font-size:35px;
    }
  </style>
  ```

### External Stylesheet
Todo el contenido `CSS` se guarda en un archivo `.css` dentro del proyecto, se carga dentro de tu `HTML` en la sección de `<head>`, comúnmente luego del `<title>` de la siguiente manera:

`<link rel="stylesheet" type="text/css" href="style.css"/>`

Siendo `style.css` el nombre del archivo, también puede estar dentro de cualquier carpeta, en ese caso debemos señalar la ruta completa `css/style.css`
<br>

Todos estos métodos pueden ser combinados, el orden de prioridad es `Inline` > `Internal` > `External`.

## Sintaxis

La estructura de un comando en `CSS` es muy sencilla, consistiendo sólo de 3 partes:

![CSS Syntax](https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-18-at-12-09-10-p-m.png)

-*Selector* es la `etiqueta`, `clase` o `id` que queremos afectar.
-*Property* es la característica que queremos afectar.
-*Value* es el valor que daremos a esta característica.

Puedes agregar múltiples pares de `property: value` cerrandolas con `;` y agregando, esto puede en una o múltiples líneas.

### Ejercicio
- Crea un archivo externo llamada `style.css` en la misma carpeta de la página HTML que creaste en el reto anterior.
- Relaciona los archivos poniendo la etiqueta `link` dentro del `head` de tu HTML.
- Centra todos los elementos de la página de HTML que creaste en el reto anterior, con el selector `<html>` y la propiedad `text-align:center`.
- Cambia el color de todos tus elementos `h1` a tu favorito, investiga y agrega una etiqueta que cambie el tipo de letra de los mismos.

## Conceptos

Estos son algunos de los conceptos principales de CSS que necesitas conocer:

-*Herencia*, un elemento puede ser afectado por múltiples códigos de CSS, por ejemplo a una etiqueta `<p>` le puede afectar el color de letra señalado en `<body>` y el tamaño por una etiqueta `<div>` que la esté rodeando.
-*Selectores combinados*, puedes agregar las mismas propiedades a más de un selector de esta forma `h1,h2,h3{color:blue;}`
-*Comentarios*, los comentarios en CSS se usan de la siguiente forma `/* Comment */`

## Selectores

Existen diversas maneras de hacer referencia al elemento de HTML con el que queremos trabajar. Estas son las 3 principales:

-*Element* se basa en el nombre del elemento de HTML.
```CSS
  p {
    color: red;
    text-align: center;
  }
  h1 {
    color:blue;
  }
```

-*id* se señala a un elemento HTML directamente, ya que los `ids` son únicos, se utiliza al anteponer un `#` al nombre del `id`
```CSS
  #titulo_1{
    color: blue;
    font-weight: bold;
  }
  #primer_parrafo{
    text-align: justify;
  }
```
Estos ejemplos podrían apuntan a un elemento como el siguiente: `<h1 id="titulo_1">Tengo estilo</h1>`

-*class* puede apuntar a un grupo de elementos, se usa al anteponer `.` al nombre de la clase.
```CSS
  .list_elements{
    text-align: left;
    list-style-type: none;
  }
  .main_text{
    font-size: 20px;
  }
```

El código anterior podría afectar elementos como el siguiente:

```HTML
<ul class="main_text">
  <li class="list_elements">Elemento 1</li>
  <li class="list_elements">Elemento 2</li>
  <li class="list_elements">Elemento 3</li>
</ul>
```

### Ejercicio
- Crea clases y ids en tus elementos HTML, aplica por lo menos 2 cambios para cada tipo de selector en tu CSS.

<br><br>
#### Recursos Externos

Para conocer todas propiedades que puedes aplicar consulta el siguiente archivo:
[CSS Cheat Sheet](https://drive.google.com/open?id=0ByUoGI7lHNH8QVJudGtCanpmenM)

Para conocer propiedades y conceptos más avanzados checa el siguiente tutorial:
[CSS Basics](http://www.cssbasics.com/)
