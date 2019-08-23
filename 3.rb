#3) Dado el hash:
h = {"x": 1, "y":2}
#Agregar el string z con el valor 3.
h[:z] = 3
#evaluando
puts h
#Cambiar el valor de x por 5.
h[:x] = 5
#evaluando
puts h
#Eliminar la clave y.
h.delete(:y)
#evaluando
puts h
#Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts "yeeah" if h.include? :z
#evaluando
puts h
#Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
h.invert
