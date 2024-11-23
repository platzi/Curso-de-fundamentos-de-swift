//
//  Subject.swift
//
//
//  Created by Santiago Moreno on 21/10/24.
//

import Foundation

public struct Subject {
    
    let name: String
    let teacherName: String
    let subjectLevel: SubjectLevel
    
    public init(name: String, teacherName: String, subjectLevel: SubjectLevel) {
        self.name = name
        self.teacherName = teacherName
        self.subjectLevel = subjectLevel
    }
    
    public func isPassed(_ score: Double) -> Bool {
        return score >= minimunScore()
    }
    
    public func subjectDescription() -> String {
        """
        ---------------------------------------------
        ## Materia: \(name)
        ## Profesor: \(teacherName)
        ## Profesor: \(teacherName)
        ## Nivel del curso: \(displaySubjectLevelInfo())
        ## Puntaje minimo para pasar: \(minimunScore())
        """
    }
    
    public func displaySubjectLevelInfo() -> String {
        switch subjectLevel {
        case .basic:
            return "\(name) es un curso de nivel básico, diseñado para introducir conceptos fundamentales."
        case .intermediate:
            return "\(name) es un curso de nivel intermedio, donde se profundizan los conocimientos adquiridos."
        case .advanced:
            return "\(name) es un curso avanzado, ideal para estudiantes con experiencia previa en el tema."
        }
    }
    
    private func minimunScore() -> Double {
        switch subjectLevel {
        case .basic:
            return 50.0
        case .intermediate:
            return 60.0
        case .advanced:
            return 70.0
        }
    }
}
