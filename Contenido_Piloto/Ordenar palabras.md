Ordenar palabras.


Captura una lista de palabras del usuario, guárdalas de cierta forma, puedes usar un array o un hash. Cuando el usuario decida terminar de capturar tienes que ordenar alfabéticamente la lista de palabras.

Respuesta:

def ordenar_palabras
    arr = []
    loop do
        puts "ingresa una palabra o teclea la palabra *Salir*"
        input_usuario = gets.chomp
        break if input_usuario == "Salir"
        arr << input_usuario
    end

    arr.sort.each_with_index do |elemento, index|
        puts "El elemento número #{index} es: #{elemento}"
    end
end

ordenar_palabras

Pruebas:

si introduces "Hola", "Lunes", "Cuaderno", "Libro", "Ruby", el método debe regresar:

El elemento número 1 es: Cuaderno
El elemento número 1 es: Hola
El elemento número 1 es: Libro
El elemento número 1 es: Lunes
El elemento número 1 es: Ruby



