Es una colección de pares clave-valor.

#### Declarando un Hash

Un hash puede ser declarado usando dos llaves `{}`. A esta forma de declarar el hash se le llama forma literal.


```ruby
nuevo_hash = {}

persona = {
   "nombre" => "Rogelio",
   "apellido" => "Prado"
  }
```

Podemos notar que se usa el rocket `=>` para asignar un valor a la clave, asimismo usamos `,` para separar los elementos de un hash.

Otra forma de declarar un hash es usando el constructor Hash.new.

```ruby
persona = Hash.new
persona[:nombre] = "Uriel"
persona[:apellido] = "Monk"
```

## Ejercicio - Definiendo un Hash

Crea un simple hash `catalogo_tienda` con las siguientes claves y valores:

```Ruby
camisa = 5
playera = 3
short = 7
pantalón = 2
```

#### Recuperando un elemento del Hash

Se pueden recuperar valores de un hash usando el operador `[]`. Para acceder al valor del hash se usa la clave del hash entre corchetes.

```Ruby
frutas = {
  "banana" => "platano",
  "strawberry" => "fresa",
  "lime" => "limon"
}

#en vez de acceder por medio de un índice se puede acceder con la clave (key) del hash.
p frutas["lime"]
#=>"limon"
```


## Ejercicio - Precio de la Camisa

Encuentra el precio de la camisa del hash `catalogo_tienda` del ejercicio anterior. Fíjate en el tipo de dato de la clave del hash.


#### Modificando un Hash

Una vez que se ha creado un hash es posible modificarlo. Puedes agregar pares clave-valor y también modificar valores existentes.


```Ruby
#Para agregar un nuevo producto y su precio en el hash `catalogo_tienda`

catalogo_tienda["calcetines"] = 3

```

## Ejercicio - Hashes

- Crea la variable `new_hash` e inicialízala a un Hash vacío.
- Crea la variable `canasta_de_frutas` e inicialízala a un Hash con 3 nombres de frutas con una cantidad correspondiente.
- A la variable `canasta_de_frutas` del ejercicio anterior agrégale una fruta más con su cantidad correspondiente.
- Selecciona una fruta de tu elección y asigna su cantidad a una variable que se llame `fruta_seleccionada`.
