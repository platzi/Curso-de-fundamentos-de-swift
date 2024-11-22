var intOptional: Int? = nil

let value = intOptional ?? 0
print(value)

func saludar(nombre: String?) {
    let saludo = nombre != nil ? "Hola \(nombre!)" : "Hola, humano"
    print(saludo)
}

saludar(nombre: "Tiago")

saludar(nombre: nil)
