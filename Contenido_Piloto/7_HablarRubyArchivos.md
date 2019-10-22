Título: Hablar en Ruby a través de un archivo.

Al escribir el comando quit salimos de irb y todo lo que habíamos escrito se perdió.

Qué hacemos si queremos utilizar nuestro código muchas veces?

Guardarlo en un archivo.

Cuando guardamos un archivo en Word podemos abrirlo cada vez que sea necesario, podemos editarlo y guardar los cambios.

Vamos a crear archivos en Ruby para guardarlos y poder usarlos cuando sea necesario.

Dentro de tu carpeta del día Martes crea el archivo con el nombre de este reto y acaba con .rb, así:

copy reto.rb

La extensión, o sea lo que va después del punto, sirve para que la computadora identifique qué tipo de archivo es pueda hablar su lenguaje. En este caso .rb le dice a la computadora que es un archivo en Ruby y la computadora sabe que debe empezar a hablar en lenguaje Ruby.

Ahora da doble click y abre el archivo. Por default windows lo abrirá con bloc de notas.

Dentro del archivo escribe tu nombre, yo me llamo Javier entonces escribiría:

puts "Me llamo Javier"

Da click en guardar y ve a línea de comandos.

En línea de comandos vamos a decirle a la computadora que lea el archivo en Ruby. Ya no nos comunicaremos directamente mediante irb sino mediante un archivo que la computadora leerá y nos regresará lo que le hayamos dicho. Pensemos que ahora nos comunicamos por la computadora mediante cartas. Tecleamos ruby y el nombre del archivo:

ruby reto.rb

La computadora regresará: Me llamo Javier.

Ahora podremos ejecutar nuestro código las veces que queramos y no sólo una.








