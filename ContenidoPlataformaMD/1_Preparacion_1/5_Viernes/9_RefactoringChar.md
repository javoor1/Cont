Refactoriza el código en una sola línea. Haz pasar las pruebas.

```Ruby
def char
  chars = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
  char_by_char = []
  chars.each do |char|
     char_by_char << char
  end
  char_by_char.join(", ")
end

#test
p char == "A, B, C, D, E, F, G, H, I, J, K"
```
