Bootstrap es un framework de frontend para el desarrollo responsivo que combina HTML, CSS y JS para crear una experiencia más rica al usuario al momento de navegar nuestra página y aplicaciones.

Bootstrap usa un sistema de cuadrícula que divide toda la vista en 12 columnas, las cuales se pueden ir adaptando para dar formato utilizando `div`como herramienta principal para su organización.

##Instalación

Para utilizar bootstrap dentro de una página web puedes optar por utilizar un `CDN` que cargará el CSS y JavaScript que necesita tu proyecto, agregando las siguientes etiquetas en la sección `<head>`

```
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
```
Puedes encontrar más instrucciones en la siguiente página: [Bootstrap: Getting Started](http://getbootstrap.com/getting-started/)

##Estructuras principales

La base de todo el sistema de Bootstrap es organizar los elementos dentro de `containers`, para lo cual ofrece 2 alternativas:

-`.container` que ofrece una interfaz responsiva con ancho fijo
```HTML
<div class="container">
  ...
</div>
```

-`.container-fluid` es una interfaz que ocupa todo el ancho disponible
```HTML
<div class="container-fluid">
  ...
</div>
```

Una vez que creamos algunas de estas 2 etiquetas ya estamos utilizando el sistema de `Grid`, lo siguiente es crear un `.row`

Un `.row` se refiere a un grupo de columnas horizontales. Puede envolver un conjunto de columnas para mantenerlas asociadas.

Dentro de este `.row` utilizaremos la clase columna o `.col`.

Existen 4 tipos de `.col` que se adaptan a diferentes dispositivos:

-`.col-xs` que se activan cuando el ancho disponible es de menos de `768px`
-`.col-sm` usado para dispositivos mayores a `768px`
-`.col-md` funciona para tamaños de pantalla más grandes que `992px`
-`.col-lg` que se utiliza para dispositivos con un ancho mayor a `1200px`

Puedes encontrar la información de cómo se utilizan estos formatos en el siguiente link: [Bootstrap CSS](http://getbootstrap.com/css/)

Los `div` con esta clase pueden utilizar hasta 12 columnas, por lo cual estas pueden ser repartidas en múltiples elementos dependiendo de las necesidades de nuestra vista.

En el siguiente ejemplo podrás ver el funcionamiento completo de estas características:
<img src="https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-18-at-5-22-41-p-m.png" width="100%" />

Esta estructura la puedes generar con el siguiente código:

```HTML
<div class="container-fluid">
       <!-- Fila con 2 columnas -->
	<div class="row">
		<div class="col-md-6">
		</div>
		<div class="col-md-6">
		</div>
	</div>
        <!-- Fila con 1 columna grande de lado izquierdo y una chica de lado derecho -->
	<div class="row">
		<div class="col-md-8">
		</div>
		<div class="col-md-4">
		</div>
	</div>
       <!-- Fila con 1 columna usando todo el ancho-->
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
        <!-- Fila con 3 columnas del mismo tamaño-->
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
```



##Componentes

Los principales componentes que usaremos en Bootstrap los puedes encontrar en su página de documentación:

Puedes ser creativo y anidar elementos uno a dentro del otro, y usar muchos componentes diferentes. [Bootstrap Components](http://getbootstrap.com/components/)

###Ejercicio

Crea la siguiente estructura utilizando las diferentes clases y componentes de Bootstrap:
<img src="https://codealab.files.wordpress.com/2017/05/screen-shot-2017-05-18-at-5-59-35-p-m.png" width="100%" />
Puedes usar el contenido que gustes, recuerda publicarlo y pegar el link como respuesta.
