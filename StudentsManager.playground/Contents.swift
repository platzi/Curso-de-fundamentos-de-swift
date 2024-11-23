
let math = Subject(name: "Matematicas", teacherName: "Tiago")
let spanish = Subject(name: "Español", teacherName: "Juan Perez", minimunScore: 80)
let biology = Subject(name: "Biologia", teacherName: "Peter Parker")
let economy = Subject(name: "Economia", teacherName: "Miles Morales", minimunScore: 70)

let student = Student(name: "Juan", age: 10, email: "msantim@hotmail.com", subjects: [math, spanish, biology, economy], scores: [65, 80, 40, 80])
print(student.studentDescription())

let advanceStudent = AdvancedStudent(name: "Juan", age: 10, email: "msantim@hotmail.com", subjects: [math, spanish, biology, economy], scores: [65, 80, 40, 80], extraPoints: 4)
print(advanceStudent.studentDescription())
