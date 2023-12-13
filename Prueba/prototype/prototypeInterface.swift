//
//  prototypeInterface.swift
//  Prueba
//
//  Created by Johnne Lemand on 07/12/23.
//

import UIKit
// primero pasalos parametros  enum  case  para indicar lo que voy enviar parte 2 ponerle la func
enum prototypeNavigationOption {
    case goToDatacell(datoscam: String)
}

protocol prototypeWireframeInterface: WireframeInterface {
    func navigate(to option: prototypeNavigationOption)
}

protocol prototypeViewInterface: ViewInterface {
}

protocol prototypePresenterInterface: PresenterInterface {
    func performPassData(datoscam: String)
    func openDatacell()
  
}

protocol prototypeInteractorInterface: InteractorInterface {
}
