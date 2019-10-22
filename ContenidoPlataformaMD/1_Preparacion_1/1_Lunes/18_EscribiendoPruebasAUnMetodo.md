Recuerda como se realizan las pruebas a un método y escribe dos pruebas para el método `caesar_cipher`.  Las pruebas deben regresar true.

```Ruby
def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_text = ""
  original_text.split("").each do |letter|
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
      cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end

#test

#Aquí debe ir la prueba 1
#Aquí debe ir la prueba 2
```
