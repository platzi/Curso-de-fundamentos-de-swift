//
//  AdvancedStudent.swift
//
//
//  Created by Santiago Moreno on 21/10/24.
//

import Foundation

public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject] = [], scores: [Double] = [], extraPoints: Double) {
        self.extraPoints = extraPoints
        super.init(name: name, age: age, email: email, subjects: subjects, scores: scores)
    }
    
    override public func studentDescription() -> String {
        var desc = """
        ------------------------------------------------------------------------------------------
        ESTUDIANTE AVANZADO:
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
    
    // Debe tener por lo menos el 90% de las materias pasadas
    override public func isApproved() -> Bool {
        var approvedSubjectsCount = 0
        for i in 0..<subjects.count {
            let subject = subjects[i]
            let score = scores[i]
            
            if subject.isPassed(score) {
                approvedSubjectsCount += 1
            }
        }
        
        let percentage = (Double(approvedSubjectsCount) / Double(subjects.count)) * 100
        return percentage > 90
    }
}
