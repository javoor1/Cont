
# def mayus(string)
# 	if string.length >= 20
# 		string.upcase
# 	else 
# 		string
# 	end

# end



# #test
# p mayus("Este string tiene más de veinte caracteres") == "ESTE STRING TIENE MÁS DE VEINTE CARACTERES"
# p mayus("Tengo 19 caracteres") == "Tengo 19 caracteres"


# def envio(direccion)
# 	if direccion.include?("México")
# 		"Recibido"
# 	else
# 		"Sólo hacemos entregas a México"
# 	end
# end

# p envio('Insurgentes Sur 8932, Alvaro Obregon, México') == "Recibido"
# p envio('Geary Blvd 3320, San Francisco, Estados Unidos') == "Sólo hacemos entregas a México"

# Crea el método `mensaje_error` que muestre un mensaje de tarjeta inválida al usuario. Este método acepta los parámetros `nombre`, `tipo_tarjeta`, `numero_tarjeta`. 

# El tipo de tarjeta debe ser: VISA, MasterCard, o American Express. 

# La tarjeta debe tener exactamente 16 dígitos. En caso de tener menos o más hay que rechazarla y mandar un mensaje al usuario con el nombre del usuario y la información de su tarjeta (Tipo de tarjeta VISA, MasterCard, o American Express, y número) que diga: "(nombre), el número de la tarjeta VISA 'xxx-771' es inválido."

# def mensaje_error(nombre, tipo_tarjeta, numero_tarjeta)
# 	p numero_tarjeta[numero_tarjeta.length-3, numero_tarjeta.length-1]
# 	if numero_tarjeta.length != 16
# 		"#{nombre}, la tarjeta #{tipo_tarjeta} con terminación en 'xxx-#{numero_tarjeta[numero_tarjeta.length-3, numero_tarjeta.length-1]}' es inválida."
# 	end
# end

# p mensaje_error('Javier', 'MasterCard', '205782460166771') == "Javier, la tarjeta MasterCard con terminación en 'xxx-771' es inválida."
# p mensaje_error('Karen', 'Visa', '78032809781234881') == "Karen, la tarjeta Visa con terminación en 'xxx-881' es inválida."

# "Karen, la tarjeta Visa con terminación en 'xxx-881' es inválido." == "Karen, la tarjeta Visa con terminación en 'xxx-881' es inválido."



# def comparar(nombre1, nombre2)
# 	nombre1 = nombre1.downcase
# 	nombre2 = nombre2.downcase
# 	if nombre1 == nombre2
# 		true
# 	else
# 		false
# 	end
# end

# p comparar("RoGeR", "Roger") == true
# p comparar("RoGeR", "DAVE") == false

