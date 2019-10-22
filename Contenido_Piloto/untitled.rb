# puts "¿Cuál es tu país?"
# pais_comprador = gets.chomp
# case pais_comprador
#     when "México" then
#         puts "¿Cuál es tu estado?"
#         estado = gets.chomp
#             case estado
#             when "Guerrero"then
#                 costo_envio = 300
#                 puts "El costo de envío a Guerrero es de #{costo_envio}"
#             when "Puebla"then
#                 costo_envio = 200
#                 puts "El costo de envío a Puebla es de #{costo_envio}"
#             when "Ciudad de México"then
#                 costo_envio = 100
#                 puts "El costo de envío a Ciudad de México es de #{costo_envio}"
#             when "Aguascalientes"then
#                 costo_envio = 280
#                 puts "El costo de envío a Aguascalientes es de #{costo_envio}"
#             else
#                 puts "No hay servicio de entrega a ese estado"
#             end

#     when "Estados Unidos" then
#         puts "¿Cuál es tu estado?"
#         estado = gets.chomp
#             case estado 
#                 when "Alaska"then
#                     costo_envio = 900
#                     puts "El costo de envío a Alaska es de #{costo_envio}"
#                 when "California"then
#                     costo_envio = 580
#                     puts "El costo de envío a California es de #{costo_envio}"
#                 when "Florida"then
#                     costo_envio = 600
#                     puts "El costo de envío a Florida es de #{costo_envio}"
#                 when "Nueva York"then
#                     costo_envio = 700
#                     puts "El costo de envío a Nueva York es de #{costo_envio}"
#                 else
#                     puts "No hay servicio de entrega a ese estado"
#             end

#     when "Canadá" then
#         puts "¿Cuál es tu estado?"
#         estado = gets.chomp
#             case estado 
#                 when "Alberta"then
#                     costo_envio = 1200
#                     puts "El costo de envío a Alberta es de #{costo_envio}"
#                 when "Quebec"then
#                     costo_envio = 1000
#                     puts "El costo de envío a Quebec es de #{costo_envio}"
#                 when "Montreal"then
#                     costo_envio = 1100
#                     puts "El costo de envío a Montreal es de #{costo_envio}"
#                 when "Toronto"then
#                     costo_envio = 900
#                     puts "El costo de envío a Toronto es de #{costo_envio}"
#                 else
#                     puts "No hay servicio de entrega a ese estado"
#             end

# else
#     puts "No hay servicio de entrega a ese"
# end



# USER = "User1"
# PASSWORD = "Test1"
# puts "Bienvenido, ingresa tu nombre de usuario"
# user = gets.chomp
# puts "Ingresa tu password"
# pass = gets.chomp

# until (pass == PASSWORD) && (user == USER)
#   puts "Tu nombre o contraseña es incorrecto"
#   puts "Ingresa de nuevo tu nombre de usuario"
#   user = gets.chomp
#   puts "Ingresa de nuevo tu password"
#   pass = gets.chomp
# end

# puts "Bienvenido #{USER}"



# def algun_nombre()
#     puts "Hola!"
# end

# def metodo_2
#     puts "¿Cómo te llamas?"
# end

# algun_nombre

# algun_nombre

# algun_nombre

# def suma
#     puts    5 + 7
# end

# suma



# def dia_numero
#     puts "Ingresa el nombre del día de hoy tal cual como se muestra:
#     Lunes/Martes/Miércoles/Jueves/Viernes/Sábado/Domingo"
#     dia = gets.chomp

#     return [1,2,3]

#     case dia          

#       when "Lunes"
#         dia = 1
#       when "Martes"
#         dia = 2
#       when "Miércoles"
#         dia = 3
#       when "Jueves"
#         dia = 4
#       when "Viernes"
#         dia = 5
#       when "Sábado"
#         dia = 6
#       when "Domingo"
#         dia = 7
#     end

# end

# p dia_numero.class

# puts "Ingresa tu nombre"
# nombre = gets.chomp

# def saludos
#     puts nombre
# end

# saludos

# def ordenar_palabras
#     arr = []
#     loop do
#         puts "ingresa una palabra o teclea la palabra *Salir*"
#         input_usuario = gets.chomp
#         break if input_usuario == "Salir"
#         arr << input_usuario
#     end

#     arr.sort.each_with_index do |elemento, index|
#         puts "El elemento número #{index} es: #{elemento}"
#     end
# end

# ordenar_palabras



# ARGV

# if ARGV.length < 1
#     puts "Missing filename from the command line"
#     exit;
# end

# count = []

# filename = ARGV[0]
# fh = open filename
# fh.each do |line|
#     chars = line.split('')
#     chars.each do |c|
#         if c != ' ' then
#             if not count[c.to_i] then
#                 count[c.to_i] = 0
#             end
#             count[c.to_i] += 1
#         end
#     end
# end

# (0..9).each do |i|
#     print i, '    ', ( count[i] ? count[i] : 0), "\n"
# end




# ------------------- I/O ------------------- 

# # Repeticiones de palabras

# # class String
#   def repeticiones(texto)
#     repeticiones = Hash.new(0)

#     # opción 1
#     texto.downcase.scan(/\w+/)
#     # p texto.split("")
#     texto.split.each do |elemento|
#       repeticiones[elemento] += 1
#     end

#     # opción 2
#     # p self.split.count
#     # p "self es igual a: #{self}"
#     # p str = self.downcase.scan(/\w+/) {|w| puts w}
#     # p self.downcase.scan(/[0-9]/) {|w| repeticiones[w] += 1}

#     repeticiones.each do |palabra, repeticiones|
#       puts "La palabra - #{palabra} - se repite #{repeticiones} veces"
#     end

#     File.open("resultado.txt", "w") do |f|
#       f.puts repeticiones
#     end

#     p repeticiones
#   end
# # end

# str = File.readlines("test.txt")
# # num_lineas = lineas.size
# p texto_completo = str.join
# # p texto_completo.split.size
# repeticiones(texto_completo)


# p repeticiones(texto_completo) == {"Las"=>1, "personas"=>1, "mayores"=>1, "me"=>1, "aconsejaron"=>1, "abandonar"=>1, "el"=>3, "dibujo"=>1, "de"=>4, "serpientes"=>1, "boas,"=>1, "ya"=>1, "fueran"=>1, "abiertas"=>1, "o"=>1, "cerradas,"=>1, "y"=>3, "poner"=>1, "más"=>1, "interés"=>1, "en"=>1, "la"=>4, "geografía,"=>1, "historia,"=>1, "cálculo"=>1, "gramática."=>1, "De"=>1, "esta"=>1, "manera"=>1, "a"=>1, "edad"=>1, "seis"=>1, "años"=>1, "abandoné"=>1, "una"=>1, "magnífica"=>1, "carrera"=>1, "pintor."=>1, "Había"=>1, "quedado"=>1, "desilusionado"=>1, "por"=>1, "fracaso"=>1, "mis"=>1, "dibujos"=>1, "número"=>2, "1"=>1, "2."=>1}


# # Repeticiones de números
# def repeticiones(texto)
#   repeticiones = Hash.new(0)

#   p texto = texto.read.split("")

#   p texto.reject! { |elemento| elemento == "\n"}

#   texto.each do |elemento|
#     repeticiones[elemento] += 1
#   end

#   p repeticiones = repeticiones.sort.to_h

#   repeticiones.each do |numero, repeticiones|
#     puts "El número - #{numero} - se repite #{repeticiones} veces"
#   end

#   File.open("resultado_hash.txt", "w") do |f|
#     f.puts repeticiones
#   end

#   p repeticiones
# end

# str = File.open("text.txt")
# p repeticiones(str) == {"0"=>5, "1"=>4, "2"=>8, "3"=>8, "4"=>8, "9"=>4, "8"=>4, "5"=>3}



# puts "ARGV recibe los argumentos de la siguiente forma:"
# p ARGV
# first_arg, *the_rest = ARGV
# p first_arg
# p the_rest

# p file = File.open("test.txt")
# p file_data = file.read


# ruby argv_ejercicio.rb Nombre:_Javier Apellido_Paterno:_Ortiz Apellido_Materno:_Arellano



# p input_usuario = ARGV
# p nombre = input_usuario[2].split("_")[1]
# # USANDO OPERADOR TERNARIO
# puts input_usuario.size <= 3  ? "No ingresaste los parámetros suficientes." : "Hola #{nombre}!"
# # USANDO IF/ELSE
# if input_usuario.size <= 3
#   puts "No ingresaste los parámetros suficientes."
# else
#   puts "Hola #{nombre}!"
# end



# # READING HTML.
# require 'open-uri'
# url = 'http://code-maven.com/'
# fh = open(url)
# html = fh.read
# puts html

# num_lineas = 0
# total = ""
# File.foreach("frases_celebres.txt") do |linea| 
#     p linea.chomp
#     puts num_lineas += 1
#     total << linea
# end

# p total 

# p lines = File.readlines("frases_celebres.txt")
# p lineas = File.readlines("frases_celebres.txt")
# num_lineas = lineas.size
# p texto_completo = lineas.join
# p texto_completo.split.size


# p lineas = File.readlines("frases_celebres.txt")

# File.open("OOP/prueba.txt", "w") do |f|
#   f.puts lineas
#   f.close
# end

# text = "First-class decisions require clear-headed thinking."
# puts "Scan method: #{text.scan(/\w+/).length}"
# puts "Split method: #{text.split.length}"



# --------- Números --------- 

# def repeticiones(texto)
#   repeticiones = Hash.new(0)

#   p texto = texto.read.split("")

#   p texto.reject! { |elemento| elemento == "\n"}

#   texto.each do |elemento|
#     repeticiones[elemento] += 1
#   end

#   p repeticiones = repeticiones.sort.to_h

#   repeticiones.each do |numero, repeticiones|
#     puts "El número - #{numero} - se repite #{repeticiones} veces"
#   end

#   File.open("resultado_hash.txt", "w") do |f|
#     f.puts repeticiones
#   end

#   p repeticiones
# end

# str = File.open("nums.txt")
# p repeticiones(str) == {"0"=>5, "1"=>4, "2"=>8, "3"=>8, "4"=>8, "9"=>4, "8"=>4, "5"=>3}



# # Forma 2 
# def repeticiones(texto)
#   repeticiones = Hash.new(0)

#   p texto = texto.read

# 	p texto = texto.tr("^0-9", '').split("")

#   texto.each do |elemento|
#     repeticiones[elemento] += 1
#   end

#   repeticiones = repeticiones.sort.to_h

#   repeticiones.each do |numero, repeticiones|
#     puts "El número - #{numero} - se repite #{repeticiones} veces"
#   end

#   File.open("resultado_hash.txt", "w") do |f|
#     f.puts repeticiones
#   end

#   p repeticiones
# end

# p str = File.open("nums.txt")
# p repeticiones(str) == {"0"=>5, "1"=>4, "2"=>8, "3"=>8, "4"=>8, "5"=>3, "8"=>4, "9"=>4}




# --------- CSV --------- 

# require 'csv'

# CSV.open('test.csv', 'r').each do |person|
#   puts person.inspect
# end

# require 'csv'
# p people = CSV.parse(File.read('test.csv'))
# puts people[0][0]
# puts people[1][0]
# puts people[2][0]


# CSV 1
# require 'csv'

# texto1 = CSV.open('personajes.txt', 'r').each do |personaje|
# 	p personaje
# end


# p texto_completo = CSV.read('personajes.csv', 'r', converters: :numeric)


# CSV.foreach('personajes.txt') do |linea|
#   puts linea.inspect
# end


# mayores_50 = texto_completo.find_all do |personaje|
# 	personaje[2] > 50
# end

# p mayores_50



# CSV 2
# require 'csv'

# p texto_completo = CSV.read('personajes.csv', 'r', converters: :numeric)
# mayores_50 = texto_completo.find_all do |personaje|
# 	personaje[2] > 50
# end
# p mayores_50[0][0] = "Allen Zimmerman"

# CSV.open('personajes.txt', 'a') do |csv|
# 	mayores_50.each do |person|
# 		csv << person
# 	end
# end

# You load in the data, find a person to change, change her name, 
# then open up the CSV file and rewrite the data back to it. 
# Notice, however, that you have to write the data person by person. 
# Once complete, text.txt is updated with the name change. This is how to write
# back CSV data to file.


# require 'csv'

# p texto_completo = CSV.read('personajes.txt', 'r', converters: :numeric, headers: true)

# p texto_completo[0]
# p texto_completo["Nombres del artista"]
# # p texto_completo.delete(0)
# # p texto_completo
# p texto_completo.delete("Nombres del artista")
# p texto_completo["Nombres del artista"]
# p texto_completo


# # texto_completo.by_col!.delete_if do |column_name, column_values|
# #   !keep.include?("Nombre del artista")
# # end

# # p texto_completo

# CSV.open('personajes.txt', 'w', headers: false) do |csv|
# 	p texto_completo
# 	texto_completo.each do |personaje|
# 		csv << personaje
# 	end
# end


require 'csv'

class Controlador
  def initialize(archivo = "tareas.txt")
    # Imprime con p lo que trae cada variable para entender qué debes hacer después
    lista_tareas_csv = CSV.open( archivo, 'r', converters: :numeric)
    
    # Ya tienes un objeto tipo CSV, pero queremos poder leerlo. 
    @lista_tareas = lista_tareas_csv.read
    # Esta variable nos regresa un objeto tipo CSV de la siguiente forma:
    # <#CSV io_type:File io_path:"tareas.txt" encoding:UTF-8 lineno:0 col_sep:"," row_sep:"\n" quote_char:"\"">
    # [["+", "Correr", "lunes"], ["+", "Nadar", "martes"], ["+", "Crossfit", "lunes"], ["+", "Dibujar", "miércoles"], ["-", "Música", "martes"],

    # Lo que queremos es que cada uno de los elementos del array sea un objeto tipo Tarea. Podemos enviar @lista_tareas
    # para inicializar una lista deberá traer lo que contenga el archivo "tareas.txt"
    @lista = Lista.new(@lista_tareas)


    @lista.lista_tareas
    tareas_todas
    intro
  end

  def intro
    loop do 
      puts "\n Bienvenido a tu lista de tareas. ¿Qué deseas hacer? \n 1.- Ver tus tareas \n 2.- Agregar tarea \n 3.- Completar tarea \n 5.- Salir"
      @input = gets.chomp.to_i
      case @input
      when 1
        self.visualizar_tareas
      when 2
        agregar_tarea
      when 3
        completar_tarea
      when 5
        break
      end
    end
  end

  def visualizar_tareas#(p_c = 0) #Dentro tendremos métodos nesteados.
    p "self dentro de visualizar_tareas: #{self}"
    puts "¿Qué deseas hacer? \n 1.- Ver tareas completadas \n 2.- Ver tareas pendientes \n 3.- Ver todas tus tareas \n 4.- Regresar al menú principal \n 5.- Salir"
    p input = gets.chomp.to_i
    case input
    when 1
      tareas_completadas
    when 2
      tareas_pendientes
    when 3
      self.tareas_todas
    when 4
      intro
    end
  end

  def tareas_todas
    p "self dentro de tareas_todas: #{self}"
    puts "Todas tus tareas"
    @lista.lista_tareas.each_with_index do |tarea, index|
      p tarea
      # puts "#{tarea.status} #{index + 1}. #{tarea.nombre_tarea}" 
    end   
  end

  def tareas_completadas
    puts "Tus tareas completadas"
    @tareas_completadas = @lista.lista_tareas.reject { |x| not x.completada? }
    @tareas_completadas.each_with_index do |tarea, index| 
      puts "#{tarea.status} #{index + 1}. #{tarea.nombre_tarea}" 
    end   
  end

  def tareas_pendientes
    puts "Tus tareas pendientes"
    @tareas_pendientes = @lista.lista_tareas.reject { |x| x.completada? }
    @tareas_pendientes.each_with_index do |tarea, index|
      puts "#{tarea.status} #{index + 1}. #{tarea.nombre_tarea}" 
    end
  end

  def agregar_tarea
    puts "agregar_tarea"
    tarea = []
    puts "Ingresa el status de la tarea: \n 1.- Completada \n 2.- Pendiente"
    p gets.chomp.to_i == 1 ? tarea << "+" : tarea << "-"
    puts "Intresa el texto de la tarea:"
    tarea << gets.chomp
    puts "Ingresa el día: \n 1.- Lunes \n 2.- Martes \n 3.- Miércoles \n 4.- Jueves \n 5.- Viernes \n 6.- Sabado \n 7.- Domingo"
    dias = {1 => "lunes", 2 => "martes", 3 => "miércoles", 4 => "jueves", 5 => "viernes", 6 => "sábado", 7 => "domingo"}
    tarea << dias[gets.chomp.to_i]
    tarea_nueva = Tarea.new(tarea)
    @lista.lista_tareas << tarea_nueva
    puts "*"*10
    # @lista.guardar_lista
    tarea_nueva.guardar_tarea
  end

  def completar_tarea
    tareas_pendientes
    puts "Qué tarea quieres completar?"
    input = gets.chomp.to_i
    p @tareas_pendientes[input-1]
    p @lista.lista_tareas[@lista.lista_tareas.index(@tareas_pendientes[input-1])].completar
    @lista.guardar_lista
    @lista.lista_tareas
  end
 end


class Tarea
  attr_reader :status, :nombre_tarea, :dia

  def initialize(tarea)
    @status = tarea[0]
    @nombre_tarea = tarea[1]
    @dia = tarea[2]
  end

  def completada?
    @status == "+" ? true : false
  end

  def completar
    @status = "+"
  end

  def guardar_tarea
    CSV.open("tareas.txt", "a+") do |csv|
      csv << [@status, @nombre_tarea, @dia]
    end
  end
end


class Lista
  attr_reader :lista_tareas

  # Inicializamos tareas como vacío para ejercicios posteriores
  # en los que queremos crear listas vacías. En caso que el contenido de tareas.txt no sea 
  # vacío, entonces mandamos llamar el método crear tareas.
  def initialize(tareas = [])
    crear_tareas(tareas) unless tareas.empty? 
  end

  def crear_tareas(tareas)
    @lista_tareas = tareas.each.map do |tarea| #Array de OBJETOS TIPO TAREA
      Tarea.new(tarea)
    end
    p @lista_tareas
  end

  def guardar_lista
    puts "SELF.tareas"*5
    p self.lista_tareas
    CSV.open("tareas.txt", "w") do |csv|
      self.lista_tareas.each do |tarea|
        puts "Dentro de self.tareas"
        p tarea
       #  p [tarea.status, tarea.nombre_tarea, tarea.dia]
        csv << [tarea.status, tarea.nombre_tarea, tarea.dia]
      end
    end
  end
end


tarea = Controlador.new()

