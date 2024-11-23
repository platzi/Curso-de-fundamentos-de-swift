
let math = Subject(name: "Matematicas", teacherName: "Tiago")
let pass = math.isPassed(60)
let description = math.subjectDescription()
print(description)

let spanish = Subject(name: "Español", teacherName: "Juan Perez", minimunScore: 80)
let spanishDescription = spanish.subjectDescription()
print(spanishDescription)
