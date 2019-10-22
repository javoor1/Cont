Título: 
###Condicionales

En el día a día se nos presentan opciones y tenemos que tomar decisiones, dependiendo de estas decisiones es que acabamos en un lugar u otro.

En la programación es indispensable tener opciones, dependiendo de cierto resultado se muestra una u otra cosa, se calcula una u otra cosa. Por ejemplo
si tu nombre de usuario o contraseña es incorrecto entonces no podrás ingresar a tu cuenta.

__¿Cómo se toman decisiones en ruby?__ Antes de saber cómo es que llevaremos a cabo decisiones en Ruby, primero pensemos en cómo una decisión básica:

Voy a comprar un pastel para una fiesta y le pregunto a mis amigos qué sabor prefieren y todos me dicen que de chocolate, pero llego a la pastelería y no tienen ya de chocolate. Le llamo a mis amigos y les explico que se acabó el de chocolate y me preguntan si todavía tienen de vainilla, pregunto y me dicen que sí todavía hay de vainilla, entonces compro de vainilla.

Si se cumple condición 1, (¿hay pastel de chocolate?) entonces llevo a cabo la acción 1 (compro pastel de chocolate). Si no se cumple la condición 1 (NO hay pastel de chocolate), entonces evalúo la condición 2 (¿hay pastel de vainilla?), si se cumple la condición 2 entonces llevo a cabo la acción 2 (SÍ compro pastel de vainilla).

Estas decisiones las realizamos TODOS los días, sin darnos cuenta nuestro cerebro las realiza todo el tiempo. Tomar decisiones es tan importante que todos los lenguajes de programación tienen una forma de tomar respuestas.

Ahora, pensemos en cómo es que podemos representar una decisión. (¿qué data type crees que sería útil?). La programación toma como base ciertos principios lógicos que se basan en la veracidad o falsedad de una "frase". Tomemos el ejemplo del pastel:

Si hay pastel de chocolate (FALSO), entonces compra pastel de chocolate (FALSO).

Si no hay pastel de chocolate (VERDADERO), entonces verifica si hay pastel de vainilla (VERDERO), entonces compra pastel de vainilla (VERDADERO).

__Al tomar decisiones básicamente evaluamos si se cumple algo, o sea si una condición es verdadera, entonces llevamos a cabo cierta acción.__ Aquí los valores verdadero y falso son importantes, basados en ellos es que tomaremos la decisión.


Hay veces en las que si una acción no se cumple simplemente no llevamos a cabo ninguna acción, por ejemplo si tenemos antojo SÓLO de un mango y resulta que hay manzana, pera, sandía, melón, pero NO HAY MANGO, entonces no queremos nada más y simplemente no comemos nada más.

Hay veces en que las decisiones pueden ser variadas, si hay de chocolate compra chocolate, si no hay de chocolate entonces compra de vainilla, si no hay de vanilla entonces compra fresa.

Otra decisión, si hay de vainilla y hay de fresa y de chocolate compra todos.

Todas las opciones anteriores se pueden representar en un lenguaje de programación.







