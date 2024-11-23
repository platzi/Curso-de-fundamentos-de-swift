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

    var students: [Student]
    
    public init() {
        students = [Student]()
    }
    
    public func insertStudent(_ student: Student) {
        students.append(student)
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student) {
        for s in students {
            if student.email.elementsEqual(s.email) {
                s.assignSubject(subject: subject, score: score)
            }
        }
    }
    
    public func generateStudentsReport() {
        for student in students {
            print(student.studentDescription())
        }
    }
    
    // Filter
    public func getApprovedStudents() -> [Student] {
        return students.filter { student in
            student.isApproved()
        }
    }
    
    // Filter
    public func getReprobedStudents() -> [Student] {
        return students.filter { student in
            !student.isApproved()
        }
    }
    
    // Map
    public func getAverages() -> [Double] {
        return students.map { student in
            student.getAverageScore()
        }
    }
    
    // Reduce
    public func getTotalAverages() -> Double {
        let averages = getAverages()
        let sum = averages.reduce(0.0, +)
        return sum / Double(averages.count)
    }
    
    // Reduce into
    public func getCoursedSubjects() -> Set<Subject> {
        let subjectsSet = students.reduce(into: Set<Subject>()) { result, student in
            for subject in student.subjects {
                result.insert(subject)
            }
        }
        return subjectsSet
    }
}
