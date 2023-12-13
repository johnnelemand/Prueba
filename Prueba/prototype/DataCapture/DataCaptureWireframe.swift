//
//  DataCaptureWireframe.swift
//  Prueba
//
//  Created by Johnne Lemand on 10/12/23.
//

import Foundation
import UIKit

final class DataCaptureWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    init(datacam : String) {
        
        let moduleViewController = _storyboard.instantiateViewController(ofType: DataCaptureViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = DataCaptureInteractor()
        let presenter = DataCapturePresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
        moduleViewController.receivedOptions = datacam
    }
    
    
    
}

// MARK: - Extensions -

extension DataCaptureWireframe: DataCaptureWireframeInterface {

    func navigate(to option: DataCaptureNavigationOption) {
        
    }
}

