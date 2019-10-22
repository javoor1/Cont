- HTML5 - canvas, video, audio
- Advance Input Field

# Inputs Avanzados


## Input Type Color

Este input es usado para campos de entrada que deben contener un color.


```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Select your favorite color:
  <input type="color" name="favcolor" value="#ff0000">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Date

Este input es usado para campos de entrada que deben contener una fecha.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Birthday:
  <input type="date" name="bday">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Datetime-local

Este input especifíca un campo de entrada para fecha y tiempo, sin zona horaria.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Birthday (date and time):
  <input type="datetime-local" name="bdaytime">
  <input type="submit" value="Send">
</form>

</body>
</html>

```

## Input Type Email

Este input es usado para campos de entrada que deben contener una dirección de email.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  E-mail:
  <input type="email" name="email">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Month

Este input permite al usuario seleccionar un mes y año.

```HTML
<!DOCTYPE html>
<html>
<body>


<form>
  Birthday (month and year):
  <input type="month" name="bdaymonth">
  <input type="submit">
</form>

</body>
</html>


```

## Input Type Number

Este input define un campo de entrada númerico.

```HTML
<!DOCTYPE html>
<html>
<body>

<p>Numeric restrictions will apply in the input field:</p>

<form>
  Quantity (between 1 and 5):
  <input type="number" name="quantity" min="1" max="5">
  <input type="submit">
</form>

</body>
</html>
```

## Input Restrictions

A continuación una lista de restricciones más comunes:


Atributos                  Descripción

disabled                           Especifíca que un campo debe ser deshabilitado.
max                 Especifíca el valor máximo para un campo de entrada.
maxlength           Especifíca el número máximo de caracteres para un campo de entrada.
min                 Especifíca el valor mínimo para un campo de entrada.
pattern             Especifíca una expresión regular para checar un valor de entrada.
readonly            Especifíca que un campo de entrada es de lectura solamente (no puede ser modificado).
required            Especifíca que un campo de entrada es requerido.
size                Específica el ancho (en caracteres) de un campo de entrada.
step                Especifíca el número legal de intervalos para un campo de entrada.
value               Especifíca el valor default para un campo de entrada.



```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Quantity:
  <input type="number" name="quantity"
   min="0" max="100" step="10" value="30">
  <input type="submit">
</form>


</body>
</html>

```

## Input Type Range

Este input define un valor máximo y un mínimo que debe ser aceptado.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Points:
  <input type="range" name="points" min="0" max="10">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Search

Este input es usado para campos de búsqueda.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Search Google:
  <input type="search" name="googlesearch">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Time

Este input permite al usuario seleccionar un tiempo.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Select a time:
  <input type="time" name="usr_time">
  <input type="submit">
</form>


</body>
</html>
```

## Input Type Url

Este input es usado para campos de entrada que deben contener una dirección url.

```HTML
<!DOCTYPE html>
<html>
<body>

<form>
  Add your homepage:
  <input type="url" name="homepage">
  <input type="submit">
</form>

</body>
</html>
```

## Input Type Week

Este input permite al usuario seleccionar una semana y un año.

```HTML
<!DOCTYPE html>
<html>
<body>


<form>
  Select a week:
  <input type="week" name="year_week">
  <input type="submit">
</form>


</body>
</html>


```


## Ejercicio

1. Crea un campo de entrada que solamente acepte un valor numérico y colocarlo dentro el elemento `<form>`.

2. Agrega al atributo `name` el valor de "cantidad" para este campo de entrada.

3. Coloca restricciones al campo de entrada para que acepte solamente números entre 1 y 10.
