Refactoriza en una línea de código y corrige el código necesario, de tal manera que la prueba sea true. La prueba no puede modificarse.

```Ruby
def is_true?
  [1, 3, 5].respond_to?(:to_sym)
end

def validate
  if is_true?
    true
  else
    false
  end
end

#test
p validate([1, 3, 5]) == false
```
