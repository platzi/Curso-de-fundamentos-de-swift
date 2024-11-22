/* TODO: Ejercicio: La gran batalla Pokemon!
 Escribe una funcion que simule una batalla entre dos Pokemones (Pokemons?).
 La funcion recibirá dos diccionarios que representan la información de cada pokemon. Cada pokemon tiene PV (puntos de vida) y PA (Puntos de ataque).
 Por defecto el turno inicial será del primer pokemon pasado como parametro.
 Cada turno un pokemon atacará al otro.
 La batalla terminará cuando uno de los dos pokemones no pueda continuar (No tenga más puntos de vida).
 La funcion debe retornar un String diciendo quien es el ganador.
 
 Tip: El ataque de un pokemon quiere decir que le reducirá la cantidad de puntos de ataque que tenga el pokemon del turno actual a la cantidad de puntos de vida del otro pokemon.
 */
var pikachu = ["pa": 10, "pv": 500]
var charmander = ["pa": 15, "pv": 120]

func simularBatallaPokemon(pokemon1: [String: Int], pokemon2: [String: Int]) -> String {
    var p1 = pokemon1
    var p2 = pokemon2
    var turno = 1
    
    while p1["pv"]! > 0 && p2["pv"]! > 0 {
        if turno == 1 {
            p2["pv"] = p2["pv"]! - p1["pa"]!
            if p2["pv"]! > 0 {
                turno = 2
            } else {
                return "Ganó pokemon 1"
            }
        } else {
            p1["pv"] = p1["pv"]! - p2["pa"]!
            if p1["pv"]! > 0 {
                turno = 1
            } else {
                return "Ganó pokemon 2"
            }
        }
    }
    
    return ""
}

let resultado = simularBatallaPokemon(pokemon1: pikachu, pokemon2: charmander)
print(resultado)
