var frutas: [String] = ["Manzana", "Piña", "Pera"]
var frutas2 = [String]()

let conteoDeFrutas = frutas.count
if(!frutas.isEmpty) {
    let primera = frutas[0]
    print(primera)
}

let segunda = frutas[1]
let tercera = frutas[2]

print(frutas)

// Insertar nuevos elementos
frutas.append("Fresa")
print(frutas)

frutas.insert("Uva", at: 1)
print(frutas)

var nuevasFrutas = ["Naranja", "Durazno"]
frutas.append(contentsOf: nuevasFrutas)
print(frutas)

let existeFresa = frutas.contains("Fresa")
let existeBanano = frutas.contains("Banano")

frutas.remove(at: 2)
print(frutas)

frutas.removeLast()
print(frutas)

frutas.removeAll()
print(frutas)


