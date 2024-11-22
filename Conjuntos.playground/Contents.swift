var animales: Set<String> = Set(["Perro", "Gato", "Conejo"])
var otrosAnimales = Set<String>()

print(animales)

let contarAnimales = animales.count
let contarOtrosAnimales = otrosAnimales.count

animales.insert("Caballo")
print(animales)

animales.insert("caballo")
print(animales)

animales.remove("caballo")
print(animales)

animales.removeAll()
print(animales)

let matematicas = Set<String>(["Juan", "Maria", "Andrea", "Jhon", "Camilo"])
let espanol = Set<String>(["Maria", "Andrea", "Jhon", "Camilo", "Rick", "Andres"])

let union = matematicas.union(espanol)
print(union)

let interseccion = matematicas.intersection(espanol)
print(interseccion)

let resta = matematicas.subtracting(espanol)
print(resta)

let resta2 = espanol.subtracting(matematicas)
print(resta2)

let diff = matematicas.symmetricDifference(espanol)
print(diff)

