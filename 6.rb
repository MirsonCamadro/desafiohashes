#6) Operaciones típicas sobre un hash
#Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
#1. Obtener el plato mas caro.
puts "el plato mas caro es: #{restaurant_menu.key(restaurant_menu.values.max)}"
#2. Obtener el plato mas barato.
puts "el plato mas barato es: #{restaurant_menu.key(restaurant_menu.values.min)}"
#3. Sacar el promedio del valor de los platos.
puts "el promedio de los platos es: #{restaurant_menu.values.sum / restaurant_menu.length}"
#4. Crear un arreglo con solo los nombres de los platos.
puts "los nombres de los platos son: #{restaurant_menu.keys.to_a}"
#5. Crear un arreglo con solo los valores de los platos
puts "los valores de los platos son: #{restaurant_menu.values.to_a}"
#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
puts "los valores con iva incluido serian: #{restaurant_menu.map { |key, value| restaurant_menu[key] = value * 1.19 }}"
#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
puts "los valores con 20% descuento para platos con mas de una palabra:
      #{restaurant_menu.each { |key, value| restaurant_menu[key] = value * 0.8 if key.include? ' '}}"
