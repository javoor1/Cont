# # Respuesta:
# def mayor(num1, num2)
# 	if num1 == num2
# 		"son iguales"
# 	elsif num1.to_s.chars.last == num2.to_s.chars.last 
# 		num1
# 	elsif num1 % 5 == 0 && num2 % 5 == 0
# 		num2
# 	else
# 		nil
# 	end
# end
 
# p mayor(1, 5) == nil
# p mayor(110, 210) == 110
# p mayor(5, 50) == 50

# def mayor(num1, num2)
#     if num1 == num2
#         "son iguales"
#     elsif num1.to_s.chars.last == num2.to_s.chars.last 
#         [num1, num2]
#     elsif num1 % 5 == 0 && num2 % 5 == 0
#         num2
#     else
#         nil
#     end
# end
 
# p mayor(1, 5) == nil
# p mayor(110, 210) == [110, 210]
# p mayor(5, 50) == 50


# def primero_ultimo?(arr)
#   arr[0] == "X" || arr[arr.size - 1] == "X"
# end

# p primero_ultimo?([1,2,3,4,6,"X"]) == true
# p primero_ultimo?(["X", 2, 4]) == true
# p primero_ultimo?([1, "X", 4]) == false


# p arr_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "hola", "me", "llamo", "Javier"]
# p arr_nums.sample(8)

