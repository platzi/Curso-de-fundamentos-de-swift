
let math = Subject(name: "Matematicas", teacherName: "Tiago", subjectLevel: .basic)
let spanish = Subject(name: "Español", teacherName: "Juan Perez", subjectLevel: .intermediate)
let biology = Subject(name: "Biologia", teacherName: "Peter Parker", subjectLevel: .intermediate)
let economy = Subject(name: "Economia", teacherName: "Miles Morales", subjectLevel: .intermediate)

let student = Student(name: "Juan", age: 10, email: "msantim@hotmail.com", subjects: [math, spanish, biology, economy], scores: [65, 80, 40, 80])
print(student.studentDescription())

let advanceStudent = AdvancedStudent(name: "Juan", age: 10, email: "msantim@hotmail.com", subjects: [math, spanish, biology, economy], scores: [65, 80, 40, 80], extraPoints: 4)
print(advanceStudent.studentDescription())
