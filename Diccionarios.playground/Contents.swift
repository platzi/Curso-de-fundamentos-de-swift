let map: [String: Any] = ["key": "value",
                          "key2": "value 2",
                          "key3": 12]

var producto: [String: Any] = [
    "id": 0,
    "nombre": "PC Lenovo",
    "precio": 1000,
    "stock": 10,
    "promocion": true
]

let nombre = producto["nombre"] as! String
print(nombre)

producto["calificacion"] = 5
print(producto)

producto["stock"] = 1
producto["precio"] = 2000
print(producto)

producto.removeValue(forKey: "promocion")
print(producto)

producto["stock"] = nil
print(producto)

producto.removeAll()
print(producto)

/* TODO: Ejercicio
 Hacer una función que retorne la cantidad de habtiantes por pais en el formato: En (Pais) hay (cantidad) de habitantes. Si el diccionario no contiene la informaciónd e ese pais, debe retornar: No tengo datos suficientes para una respuesta exclarecedora.
 Recibirá el pais como parametro como String.
 
 Tip: Usar la funcion contains (diccionario.keys.contains).
 */
let habitantesPorPais: [String: Int] = [
    "Colombia": 48000000,
    "México": 120000000,
    "España": 46000000,
    "Francia": 67000000
]

func getHabitantesPorPais(pais: String) -> String {
    return ""
}
