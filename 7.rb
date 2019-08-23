#7) Ejercicio completo con un hash
#Se tiene un hash con el inventario de un negocio de computadores.
inventario = {Notebooks: 4, PCEscritorio: 6, Routers: 10, Impresoras: 6}
#Se pide:
#Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
def menu
 puts('
  Por favor, ingrese un numero:
  1) Agregar un producto
  2) Eliminar un producto
  3) Actualizar informacion de un producto
  4) Mostrar stock total
  5) Mostrar producto con mayor stock
  6) Verificar si un producto existe
  7) Salir')
end
#Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash.
#Para separar el nombre del stock el usuario debe utilizar una coma.
#Ejemplo del input: "Pendrives, 100"
def addproduct (p,i)
  newarray = p.split(',')
  i[newarray.first.to_sym] = newarray.last.to_i
end
#Si el usuario ingresa 2, podrá eliminar un item.
def deleteproduct (p,i)
 i.delete(p.to_sym)
 puts "Se a eliminado #{p} del inventario"
end
#Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
#lo mismo que 1
#Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
def showtotal (p)
  p.values.sum
end
#Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
def maxstock (p)
  p.key(p.values.max)
end
#Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no.
def existe (p,i)
  if i.has_key?(p.to_sym)
    puts "#{p} si existe"
  else
    puts "#{p} no se encuentra registrado"
  end
end
#El programa debe repertirse hasta que el usuario ingrese 7 (salir).
ask = true
while ask == true
  print menu
  x = gets.to_i
    if x == 1
      print inventario
      puts 'ingrese producto y valor a modificar. (separados por ",")'
      puts 'ejemplo: Producto,100'
      addproduct(gets.chomp, inventario)
    elsif x == 2
      puts inventario
      puts 'ingrese producto a eliminar:'
      y = deleteproduct(gets.chomp,inventario)
      puts y
    elsif x == 3
        print inventario
        puts 'ingrese nuevo producto y valor (separados por ","):'
        puts 'ejemplo: Producto,100'
        addproduct(gets.chomp, inventario)
        puts "se a modificado #{p} correctamente"
    elsif x == 4
      puts "Existen #{showtotal(inventario)} productos en total"
    elsif x == 5
      puts "el prodcuto con mayor stock es #{maxstock(inventario)}"
    elsif x == 6
      puts "Que producto busca?"
      existe(gets.chomp,inventario)
    elsif x == 7
      ask = false
      print 'adios'
    else
      puts "ingrese una opcion valida"
    end
end
