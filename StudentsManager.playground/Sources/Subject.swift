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
    let minimunScore: Double
    
    public init(name: String, teacherName: String, minimunScore: Double = 60) {
        self.name = name
        self.teacherName = teacherName
        self.minimunScore = minimunScore
    }
    
    public func isPassed(_ score: Double) -> Bool {
        score >= minimunScore
    }
    
    public func subjectDescription() -> String {
        """
        ---------------------------------------------
        # Materia: \(name)
        # Profesor: \(teacherName)
        # Puntaje minimo para pasar: \(minimunScore)
        """
    }
}
