
func saludar() {
    print("Hola mundo!")
}

saludar()

func saludarAAlguien(nombre: String) {
    print("Hola \(nombre)!")
}

saludarAAlguien(nombre: "Tiago")
saludarAAlguien(nombre: "Maria")
saludarAAlguien(nombre: "Juan")

func calcularPromedio(n1: Double, n2: Double, n3: Double) -> Double {
    let suma = n1 + n2 + n3
    let promedio = suma / 3
    return promedio
}

let promedio = calcularPromedio(n1: 10, n2: 20, n3: 30)

func obtenerNotaFinal(nota: Double) -> String {
    if(nota >= 0 && nota < 2) {
        return "Te fue muy mal en el examen"
    } else if(nota >= 2 && nota < 3) {
        return "Lo siento, estuvo cerca"
    } else if(nota >= 3 && nota < 4) {
        return "Pasaste, pero lo puedes hacer mejor"
    } else if(nota >= 4 && nota <= 5) {
        return "Felicidades"
    } else {
        return "Hay un error en el sistema"
    }
}

obtenerNotaFinal(nota: 0)
obtenerNotaFinal(nota: 1)
obtenerNotaFinal(nota: 2)
obtenerNotaFinal(nota: 3)
obtenerNotaFinal(nota: 4)
obtenerNotaFinal(nota: 5)
