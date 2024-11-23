//
//  Student.swift
//  
//
//  Created by Santiago Moreno on 21/10/24.
//

import Foundation

public class Student: Aprobable {
    let name: String
    let age: Int
    let email: String
    let subjects: [Subject]
    let scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func studentDescription() -> String {
        var desc = """
        ------------------------------------------------------------------------------------------
        ESTUDIANTE:
        ------------------------------------------------------------------------------------------
        # Nombre: \(name)
        # Correo electrónico: \(email)
        # Edad: \(age)
        # Materias que esta cursando:
        """
        
        for subject in subjects {
            desc += "\n\(subject.subjectDescription())"
        }
        
        desc += """
        \n---------------------------------------------
        ### Aprobado: \(isApproved())
        """
        return desc
    }
    
    // Debe tener por lo menos el 60% de las materias pasadas
    public func isApproved() -> Bool {
        var approvedSubjectsCount = 0
        for i in 0..<subjects.count {
            let subject = subjects[i]
            let score = scores[i]
            
            if subject.isPassed(score) {
                approvedSubjectsCount += 1
            }
        }
        
        let percentage = (Double(approvedSubjectsCount) / Double(subjects.count)) * 100
        return percentage > 60
    }
}
