Corrige y refactoriza el siguiente código usando unless y menos líneas de código:
__Si tienes dudas de como usar unless, puedes revisar el apartado de ruby basics Estructuras De Control__
```Ruby
def swim(time)
  if time < 10
    "#{time} seconds... New Record for 50 meters"
  end
end

#test
p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"
```
