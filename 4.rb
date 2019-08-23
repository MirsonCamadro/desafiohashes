#4) Array y Hashes
#Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash
#con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
#4.1
personas_hash = personas.zip(edades).to_h
#evaluando
print personas_hash
#4.2  Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.
def promedio(hash)
   hash.values.sum / hash.length
end
#evaluando
promedio(personas_hash)
