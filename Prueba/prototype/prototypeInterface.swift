//
//  prototypeInterface.swift
//  Prueba
//
//  Created by Johnne Lemand on 07/12/23.
//

import UIKit

enum prototypeNavigationOption {
     case goToDatacell
}

protocol prototypeWireframeInterface: WireframeInterface {
    func navigate(to option: prototypeNavigationOption)
}

protocol prototypeViewInterface: ViewInterface {
}

protocol prototypePresenterInterface: PresenterInterface {
    func performPassData(with parameter: String)
    func openDatacell()
  
}

protocol prototypeInteractorInterface: InteractorInterface {
}
