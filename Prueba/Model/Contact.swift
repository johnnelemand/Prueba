//
//  Contact.swift
//  Prueba
//
//  Created by Johnne Lemand on 08/12/23.
//
import UIKit

enum SideMenu: String, CaseIterable {
    case Camara
    case Foto
    case Nombre
    case Numero
    case FechaNacimiento
    case Sexo
    case ColorFavorito
}

extension SideMenu {
    var title: String {
        return NSLocalizedString(self.identifier, comment: "")
    }
    
    var identifier: String {
        switch self {
        case .Camara:
            return "TITLE_VIEW"
        case .Foto:
            return  " "
        case .Nombre:
            return "REGISTRY_DEPOSIT_VIEW_TITLE"
        case .Numero:
            return "TITLE_VIEW_SETTINGS"
        case .FechaNacimiento:
            return "TITLE_VIEW_HELP"
        case .Sexo:
            return "TITLE_VIEW_LOGOUT"
        case .ColorFavorito:
            return "TITLE_VIEW_ACCOUNTMANAGE"
       
        }
    }
    
    var imagenamed: String {
        switch self {
        case .Camara:
            return "Camara"
        case .Foto:
            return  "Foto"
        case .Nombre:
            return "NombreCompleto"
        case .Numero:
            return "NúmeroCompleto"
        case .FechaNacimiento:
            return "Calendar"
        case .Sexo:
            return "seximg"
        case .ColorFavorito:
            return "Colorfav"
        }
    }
}
