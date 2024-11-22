for numero in 1...10 {
    print("El numero es: \(numero)")
}

let nombres = ["Juan", "Pedro", "Maria"]
let nombreABuscar = "pedro"

var resultado = ""
for nombre in nombres {
    if(nombre.lowercased() == nombreABuscar.lowercased()) {
        resultado = "He encontrado a \(nombre)"
    }
}
if resultado.isEmpty {
    print("No he encontrado a nadie llamado \(nombreABuscar)")
} else {
    print(resultado)
}

let texto = "Hola, mi nombre es Juan"
for letra in texto {
    print(letra)
}

/* TODO: Ejercicio
 Escribe una funcion que ejecute un bucle que recorra una cadena de texto y cuente cuántas vocales contiene.
 
 Tip: Puedes usar este String "aeiouáéíóúAEIOUÁÉÍÓÚ" como variable para determinar las vocales en español.
 Puedes usar la funcion contains de los strings.
 */

func countarVocales(texto: String) -> Int {
    return 0
}

