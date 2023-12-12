//
//  DataCaptureInterface.swift
//  Prueba
//
//  Created by Johnne Lemand on 10/12/23.
//

import Foundation
import UIKit

enum DataCaptureNavigationOption {
}

protocol DataCaptureWireframeInterface: WireframeInterface {
    func navigate(to option: DataCaptureNavigationOption)
}

protocol DataCaptureViewInterface: ViewInterface {
}

protocol DataCapturePresenterInterface: PresenterInterface {
    
}

protocol DataCaptureInteractorInterface: InteractorInterface {
}

