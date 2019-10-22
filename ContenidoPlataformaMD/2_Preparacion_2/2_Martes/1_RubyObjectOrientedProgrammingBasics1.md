## Ruby Objects

Todo en Ruby es un objeto. Los objetos son creados desde las clases. Una manera sencilla es ver las clases como moldes y los objetos como las cosas que puedes producir usando esos moldes. Un ejemplo de dos objetos de la clase `String` son los siguientes:

```Ruby
"welcome".class
#=>String
```

```Ruby
"coders".class
#=>String
```

De hecho, todo lo que hemos estado usando en ruby tanto `strings` como `integers` son objetos, los cuales son instanciados desde una clase.

## Clases

Para definir una clase, la sintaxis es similar cuando definimos un método. Se reemplaza la palabra reservada `def` con `class` y usamos la convención CamelCase para crear el nombre.

```Ruby
class RaceCar
end
```

## Ejercicio - Crear una Clase

Crea las clases vacías que se llamen `Cat`, `Dug`, `Dog` y `Dolphin`.


## Instancias

Para crear un objeto definimos una clase y la instanciamos usando el método `.new` para crear una instancia. La instancia también es conocida como un objeto.

```Ruby
class MyClass
end

#instancias de MyClass
obj_one = MyClass.new
obj_two = MyClass.new
```

## Ejercicio - Creando un Objeto en Ruby

Crea tres objetos para...

1) cat
2) car
3) window
4) water
5) fruit
6) vegetable
7) person
