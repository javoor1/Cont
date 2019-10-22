En este ejercicio vamos a aprender a utilizar CSS para responder al comportamiento de un usuario. Haremos un poco dinámica la página para que sea más atractiva a la vista y los usuarios puedan interactuar con el menú.

Utiliza el ejercicio anterior en el que creaste una barra de navegación tipo botón ya que seguramente te quedo muy cool y puedes seguir usándola.

Al hacer un menú, te recomendamos ponerte al tanto o actualizarte en cuanto a CSS positioning. Lee este articulo de Treehouse.

- [CSS Positioning: A Comprehensive Look](http://blog.teamtreehouse.com/css-positioning).

## Objetivos Académicos

- Comprender el posicionamiento de los elementos de una página.
- Esconder y aparecer elementos dependiendo del comportamiento del usuario.

### Actividades

Como en los ejercicios pasados, deberás de utilizar la siguiente imagen y tratar de replicarla.

<center>
    ![alt text](https://codealab.files.wordpress.com/2015/10/dropdown_menu-e1445622199276.png)
</center>

Para poder crear el menú desplegable necesitaras modificar el HTML. Agrega lo siguiente dentro del `<li>` que le corresponde.

```html
<ul class="submenu">
    <li><a href="#">Uno</a></li>
    <li><a href="#">Dos</a></li>
    <li><a href="#">Tres</a></li>
</ul>
```

Crear el comportamiento del menú es simple. En el momento en que se carga la página los menús desplegables deben de estar escondidos (hidden). En el momento en el que el usuario hace `hover` sobre el menú, el menú desplegable particular a este menú aparece en la parte de abajo.

`hover` es cuando un usuario sitúa el mouse por encima de un elemento, sin hacer click. Seguramente has visto que con sólo colocar el mouse sobre algunos elementos, éstos cambian de color o hacen alguna acción definida.

En la imagen de encima puedes ver el momento en el que aparece el menú desplegable.

#####Algunas cosas que debes de tener en cuenta y preguntarte

- ¿Cómo harás que el menú desplegable aparezca arriba de todos los demás elementos como si estuviera flotando?
- ¿Qué opciones tienes para hacer que un elemento aparezca y desaparezca? Existen más formas que solo: `visibility: hidden;` y `display: none;`.
