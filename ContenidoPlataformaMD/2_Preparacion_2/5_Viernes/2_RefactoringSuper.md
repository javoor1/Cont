Refactoriza el código. Revisa la documentación acerca de herencia y super. Haz pasar las pruebas.

```Ruby
class A
  def b(a)
    'A.b'
  end
end

class B < A
  def b(a)
    if a == 5
      'B.b'
    else
      c(a)
    end
  end

  def c(a)
    'A.b'
  end
end


#test
p b.b(5) == "B.b"
p b.b(10) == "A.b"
```
