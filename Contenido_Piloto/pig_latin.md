Título:
###Ejercicio Pig Latin

En este ejercicio tienes que cambiar el orden de una palabra. Es un juego de palabras que usan los niños para comunicarse entre ellos.

[Revisa el wiki de pig latin](http://en.wikipedia.org/wiki/Pig_Latin)

Las palabras pueden cambiar de dos maneras.

1.- Si empiezan con vocal tiene que agregarse el sufijo "way". Por ejemplo:

"antes" => "antesway"
"oro" => "oroway"
"úrsula" => "úrsulaway"

2.-  palabras que empiezan con consonante. 
"perro" => "erropay"
"muestra" => "uestramay"
"chucho" => "uchochay"

Aquí tienes que encontrar la consonante, (o en el caso de palabras como "chucho" las consonantes), y enviarla al final de la palabra y después agregarle el sufijo "ay".

Escribe un método para esto.

Haz pasar las siguientes pruebas:

piglatin("antes") == "antesway"
=> true
piglation("perro") == "erropay"
=> true


Respuesta:

1.-
```ruby
def pig_latin (palabra)
  puts "Escribe una plalabra:"
  # palabra = palabra.downcase.split(/ /)
  array_final=[]

  palabra.each do |element|
    if element.chr=~/a|e|i|o|u/
      c=element+"way"
      array_final = array_final<<c
    else 
      a=element.split /([aeiou])/
      b = a.reverse << "ay"
       b = b.join
       array_final=array_final << b
    end
  end
  p array_final.join(" ")
end


p palabra = ARGV
pig_latin(palabra)



2.-
# def pig_latin
#   puts "Escribe una plalabra:"
  
#   palabra= gets.chomp.downcase.split(/ /)

#   array_final=[]

#   palabra.each do |element|
#     if element.chr=~/a|e|i|o|u/
#       c=element+"way"
#       array_final = array_final<<c
#     else /([aeiou])/
#       b = a.reverse << "ay"
#       a=element.split 
#        b = b.join
#        array_final=array_final << b
#     end
#   end
#   p array_final.join(" ")
# end

# pig_latin

3.-
ARGV.inspect
 
 
def word_pig_latin(word)

  if ("aeiou").include?(word[0])
    word + "way"
  elsif ("gl ph tr sc wh th sh sch gh qu").include?(word[0..1])
    word[2..-2] << word[0..1] << "ay"
  else
    word[1..-1] << word[0] << "ay"
   end
end 
 
 
array = []
arg_dup = ARGV.dup
arg_dup.each {|x| array << word_pig_latin(x) }

p array
```
