Implementar el método para hashtags.

def hashtag (str)
    new = str.split.map! do |e|
        e.insert(0, "#")
    end

    new.join(" ")
end

a = hashtag("fun words to hashtag")
puts a




12.- 
Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

Expected output:
[50, 25, 5]

Solution:
half_numbers = numbers.map do |key, value|
                 value / 2
               end
p half_numbers


13.-
Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
Expected output:

{:low:=>10}


14.-
In the following code, numbers isn't mutated because #select isn't a destructive method. However, there is a destructive version of #select named #select!. Modify the code to use #select! instead of #select.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |key, value|
                 value < 25
               end

p low_numbers
p numbers
Expected output:

{low: 10}
{low: 10}

Solution:
low_numbers = numbers.select! do |key, value|
                 value < 25
               end
