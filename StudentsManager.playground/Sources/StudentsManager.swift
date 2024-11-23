//
//  StudentsManager.swift
//  
//
//  Created by Santiago Moreno on 21/10/24.
//

import Foundation

public protocol Managble {
    func insertStudent(_ student: Student)
    func asignSubjectToStudent(subject: Subject, score: Double, student: Student)
    func generateStudentsReport()
    func getApprovedStudents() -> [Student]
    func getReprobedStudents() -> [Student]
    func getAverages() -> [Double]
    func getTotalAverages() -> Double
    func getCoursedSubjects() -> Set<Subject>
}

public class StudentsManager: Managble {

    let students: [Student]
    
    init() {
        students = [Student]()
    }
    
    public func insertStudent(_ student: Student) {
        /* TODO: Ejercicio
         Implementar esta función
         */
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student) {
        /* TODO: Ejercicio
         Implementar esta función.
         
         Tip: Crea un metodo en la clase Student que agregue una materia a su lista.
         (Puede que tengas que modificar más de una cosa en esa clase)
         */
    }
    
    public func generateStudentsReport() {
        /* TODO: Ejercicio
         Implementar esta función. Debe imprimir la lista de la información de todos los estudiantes y sus respectivas materias.
         */
    }
    
    public func getApprovedStudents() -> [Student] {
        return []
    }
    
    public func getReprobedStudents() -> [Student] {
        return []
    }
    
    public func getAverages() -> [Double] {
        return []
    }
    
    public func getTotalAverages() -> Double {
        return 0
    }
    
    public func getCoursedSubjects() -> Set<Subject> {
        return Set<Subject>()
    }
}
