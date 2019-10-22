Define el método `join_hash` que recibe tres hashes y regresa la unión de los hashes. No uses `merge`. Se recomienda usar iteración.

```Ruby
fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"}
```
