Las propiedades CSS son las que permiten modificar los elementos del HTML para lograr que la página web luzca tal cual la hemos imaginado.

Recordemos que la estructura en CSS es:

- Para el caso de etiquetas (como p, h1, body, etc.)
```CSS
etiqueta{
  propiedad: valor;
  propiedad: valor;
  ...
}
```
Ejemplo:
```CSS
p{
  font-size: 16px;
  color: green;
}
```
Hará que el texto de todos los párrafos sean de un tamaño de 16 píxeles (px) y de color verde.

- Para el caso de clases o id asignados a etiquetas.

 ¿Qué pasa si solo quieres que algunos párrafos tengan su texto verde? Le colocas una clase a esos párrafos dentro de tu archivo HTML como  ```<p class="green_paragraph">```y en el archivo CSS escribes:
 ```CSS
 .green_paragraph{
   font-size: 16px;
   color: green;
 }
 ```
 Si solo se trata de un párrafo al cual le quieres cambiar el formato, en lugar de una clase puedes usar un id en tu HTML como ``` <p id="green_paragraph">``` y en el archivo CSS escribes:
 ```CSS
 #green_paragraph{
   font-size: 16px;
   color: green;
 }
 ```


 Se tiene una gran lista de propiedades de CSS, pero las que más estarás utilizando al inicio en tus ejercicios HTML son:
- `color`cambia el color del texto al que especifique su valor. Puede ser de diferentes maneras, escribiendo el nombre del color en inglés `color: black;` o con su código HEX al buscar tu color favorito en páginas de paletas de colores como [HTML colores codes](http://htmlcolorcodes.com/es/ ) como  `color: #FF5733;`

- `text-aling` coloca el texto centrado (ejemplo `text-aling: center;`), justificado, a la izquierda o a la derecha.

- `font-family`cambia la fuente de la letra como `font-family: Times New Roman;` Arial, sans-serif, entre otras. Existe una gran cantidad de fuentes que puedes usar, date un paseo por [Google Fonts](https://fonts.google.com/) e investiga que debes hacer pasa usarlas en tu página web.

Revisa la sección de Recursos Externos para conocer más propiedades CSS


### Recursos Externos
 - Propiedades CSS Clasificadas [CCM](http://es.ccm.net/contents/158-css-hojas-de-estilo)
 - Lista de todas las propiedades y ejemplos que puedes modificar para ver los resultados [3wschools SQL Tutorial](https://www.w3schools.com/cssref/pr_margin.asp)

### Ejercicios

Crea una página con HTML y en su archivo CSS utiliza mínimo 10 propiedades diferentes.
