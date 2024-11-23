
// MARK: - Materias
let math = Subject(name: "Matematicas", teacherName: "Tiago", subjectLevel: .basic)
let spanish = Subject(name: "Español", teacherName: "Juan Perez", subjectLevel: .intermediate)
let biology = Subject(name: "Biologia", teacherName: "Peter Parker", subjectLevel: .intermediate)
let economy = Subject(name: "Economia", teacherName: "Miles Morales", subjectLevel: .intermediate)
let physics = Subject(name: "Física", teacherName: "Rick Sanchez", subjectLevel: .advanced)

// MARK: - Estudiantes
let juan = Student(name: "Juan", age: 10, email: "juan@hotmail.com")
let jhon = AdvancedStudent(name: "Jhon", age: 11, email: "jhon@gmail.com", extraPoints: 4)
let maria = Student(name: "Maria", age: 15, email: "maria@gmail.com")


// MARK: - Students Manager
let manager = StudentsManager()
manager.insertStudent(juan)
manager.insertStudent(jhon)
manager.insertStudent(maria)

// Materias de Juan
manager.asignSubjectToStudent(subject: math, score: 60, student: juan)
manager.asignSubjectToStudent(subject: spanish, score: 70, student: juan)
manager.asignSubjectToStudent(subject: biology, score: 90, student: juan)

// Materias de Jhon
manager.asignSubjectToStudent(subject: math, score: 90, student: jhon)
manager.asignSubjectToStudent(subject: economy, score: 80, student: jhon)
manager.asignSubjectToStudent(subject: biology, score: 80, student: jhon)
manager.asignSubjectToStudent(subject: physics, score: 90, student: jhon)

// Materias de Maria
manager.asignSubjectToStudent(subject: economy, score: 70, student: maria)
manager.asignSubjectToStudent(subject: spanish, score: 81, student: maria)
manager.asignSubjectToStudent(subject: biology, score: 40, student: maria)

manager.generateStudentsReport()
let avergaes = manager.getAverages()

let set = manager.getCoursedSubjects()

