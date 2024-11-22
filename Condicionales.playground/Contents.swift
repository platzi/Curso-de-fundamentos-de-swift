// Nota >= 3 -> Paso el examen, sino no paso
let nota = 3

if(nota >= 3) {
    print("Felicidades, pasaste el examen")
} else {
    print("Lo siento, nos veremos el proximo semestre :(")
}

let eximido = false

if(eximido || nota >= 3) {
    print("Felicidades, pasaste el examen")
} else {
    print("Lo siento, nos veremos el proximo semestre :(")
}

let siPresento = false

if(siPresento && (eximido || nota >= 3)) {
    print("Felicidades, pasaste el examen")
} else {
    print("Lo siento, nos veremos el proximo semestre :(")
}

let nota2 = 6

if(nota2 >= 0 && nota2 < 2) {
    print("Te fue muy mal en el examen")
} else if(nota2 >= 2 && nota2 < 3) {
    print("Lo siento, estuvo cerca")
} else if(nota2 >= 3 && nota2 < 4) {
    print("Pasaste, pero lo puedes hacer mejor")
} else if(nota2 >= 4 && nota2 <= 5) {
    print("Felicidades")
} else {
    print("Hay un error en el sistema")
}
