var contador = 1
while contador <= 10 {
    print("El contador es: \(contador)")
    contador += 1
}

let respuesta = 7
var intento: Int?

while intento != respuesta {
    print("Un nuevo intento de adivinanza")
    intento = Int.random(in: 1...10)
    print(intento!)
    if intento == respuesta {
        print("Respuesta encontrada")
    } else {
        print("Intenta de nuevo")
    }
}

