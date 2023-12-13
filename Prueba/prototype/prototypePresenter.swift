//
//  prototypePresenter.swift
//  Prueba
//
//  Created by Johnne Lemand on 07/12/23.
//

import Foundation
import UIKit

final class prototypePresenter {

    // MARK: - Private properties -

    private unowned let _view: prototypeViewInterface
    private let _wireframe: prototypeWireframeInterface
    private let _interactor: prototypeInteractorInterface

    // MARK: - Lifecycle -

    init(wireframe: prototypeWireframeInterface, view: prototypeViewInterface, interactor: prototypeInteractorInterface) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
    }
}

// MARK: - Extensions -

extension prototypePresenter: prototypePresenterInterface {
    
    func openDatacell() {
//        _wireframe.navigate(to: .goToDatacell(datoscam: datoscam))
    }
    
    
    func performPassData(datoscam: String){
        _wireframe.navigate(to: .goToDatacell(datoscam: datoscam))
    }
    
    
}
