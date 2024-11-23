//
//  ManagerError.swift
//  
//
//  Created by Santiago Moreno on 22/10/24.
//

import Foundation

enum ManagerError: Error {
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentsReachedError(max: Int)
    
    func getErrorDescription() -> String {
        switch self {
        case .studentNotAddedError:
            return "El estudiante no se pudo agregar"
        case .subjectNotAssignedError:
            return "No se pudo asignar al asignatura"
        case .reportNotFoundError:
            return "El reporte no se pudo encontrar porque la lista de estudiantes está vacía"
        case .maxStudentsReachedError(let max):
            return "La cantidad máxima de estudiantes es: \(max) y ya fue alcanzada"
        }
    }
}
