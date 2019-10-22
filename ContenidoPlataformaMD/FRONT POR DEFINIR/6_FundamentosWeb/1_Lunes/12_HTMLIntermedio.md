## Div

La etiqueta `<div>` es un contenedor que encapsula otros elementos y los divide en secciones dentro de nuestro documento HTML.

Este es un ejemplo de una etiqueta `div` encapsulando una etiqueta `h5` y dos `p`
```
<div>
  <h5>Subtítulo</h5>
  <p>Este es el primer párrafo de contenido.</p>
  <p>Y este es el segundo párrafo de contenido</p>
</div>
```

En desarrollo web lo utilizaremos también para agrupar elementos a los que queremos darle un estilo CSS a varios elementos a la vez, usando selectores como `id` y `class`. Esto es debido a que los elementos hijos del `<div>` heredan sus propiedades.

Este es el código anterior con estilos aplicado:

```
<div id = "divisor">
  <h5>Subtítulo</h5>
  <p>Este es el primer párrafo de contenido.</p>
  <p>Y este es el segundo párrafo de contenido</p>
</div>

<style>
  #divisor {
    color: #1f8dd3;
    border: 1px black solid;
    margin: 5px;
    padding: 5px;
  }
</style>

```
Y visto en nuestro navegador obtenemos el siguiente resultado:
![Div](https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-24-at-9-26-17-a-m.png)

Un elemento `div` puede ser subdivido con más `div` dentro de él, esto nos permitirá organizar grupos de elementos con diferentes objetivos, lo cual en la práctica nos ayudará a tener la vista de nuestro documento de la manera en que la queremos ver.

### Ejercicio

- Usando el código de ejemplo de `<div>` obtén el siguiente resultado usando otros `div` dentro del principal
![Exercise](https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-24-at-9-52-09-a-m-e1495638233716.png)

Puedes encontrar más información de los `<div>` en el siguiente enlace: [The Div Tag](http://www.html-5-tutorial.com/div-tag.htm)

## Form

Se utilizan para enviar datos al servidor web, puede contener controles de entrada (`inputs`).

Un formulario en HTML es una colección `inputs`, `labels` y además puedes colocar otros elementos para dar formato o estilo, normalmente acompañados de un botón que nos permitirá enviar la información capturada en estos a otra acción.

![Formulario](https://upload.wikimedia.org/wikipedia/commons/a/aa/Advanced-search-form-screen-image.png)

Seguramente ya has visto e interactuado con formularios mientras navegas por internet, por ejemplo iniciar sesión en esta plataforma y pegar tus respuestas en estos ejercicios y enviarla se hace mediante formularios.

Los elementos principales de un formulario son los siguientes:
- `<form action="/action" method="get">` es la etiqueta principal y envuelve todo el formulario, se especifica la acción que se ejecutará al dar click al botón del formulario y el método que se usará
- `<fieldset>` para agrupar los `inputs` del formulario y opcionalmente puede llevar una etiqueta `<legend>` como título del mismo
- `<input type="text" name="first_name">` esta etiqueta define un `input` y puede ser de diferentes tipos.
- `<label for="first_name">` se utiliza para acompañar nuestro `input` de un texto o icono
- `<input type="submit">` es el tipo de `input` que se encargará de crear el botón
- también puede contener otros tipos de `inputs` que tienen etiquetas diferentes como `<select>` con `<option>` para desplegar opciones seleccionables, `<textarea>` para contenidos amplios de texto, y `<button>` que es una alternativa para crear el botón que mandará la acción.

Un formulario con estos elementos tendría la siguiente estructura:

```HTML
<form id="form_test">
  <fieldset>
    <legend>Personal Data</legend>
    <label for="first_name">
      First Name:
      <input type="text" name="first_name">
    </label><br>
    <label for="last_name">
      Last Name:
      <input type="text" name="last_name">
    </label><br>
    <label for="email">
      Email:
      <input type="email" name="email">
    </label><br>
    <label for="description">
      Description:
      <textarea form="form_test" rows="4" cols="50"></textarea>
    </label><br>
  </fieldset>
</form>
```

Y su resultado se ve así:
![Form](https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-24-at-4-20-21-p-m-e1495660849177.png)

### Ejercicio

Crea un formulario para una cadena de autoservicios que te permita capturar la información de facturación de un cliente, usa los siguientes campos y asegurate de estar usando el tipo de datos correcto para cada uno:
- Nombre Completo
- RFC
- Dirección
- Email
- Teléfono
- Descripción de la compra
- Tipo de Pago, con opciones como Efectivo, Cheque, etc.
- Monto
