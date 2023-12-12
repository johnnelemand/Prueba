//
//  prototypeWireframe.swift
//  Prueba
//
//  Created by Johnne Lemand on 07/12/23.
//

import Foundation
import UIKit

final class prototypeWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = _storyboard.instantiateViewController(ofType: prototypeViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = prototypeInteractor()
        let presenter = prototypePresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
    }
    
    func openDatacell(){
        let wireframe = DataCaptureWireframe()
        navigationController?.pushWireframe(wireframe)
    }
    
    
}

// MARK: - Extensions -

extension prototypeWireframe: prototypeWireframeInterface {
    
    func navigate(to option: prototypeNavigationOption) {
        switch option{
        case .goToDatacell:
            navigationController?.popViewController(animated: true)
            openDatacell()
            break
        }
    }
}
