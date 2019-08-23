#5) Array y Hashes
#Dados los siguientes array:
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
#5.1. Generar un hash que contenga los meses como llave y las ventas como valor:
#h = {'Enero': 2000, 'Febrero': 3000 ... }
h = meses.zip(ventas).to_h
#5.2. En base al hash generado:
#5.2.1. Invertir las llaves y los valores del hash.
h.invert
#5.2.2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
h.key(h.values.max)
