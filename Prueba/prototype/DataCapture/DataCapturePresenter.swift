//
//  DataCapturePresenter.swift
//  Prueba
//
//  Created by Johnne Lemand on 10/12/23.
//

import Foundation
import UIKit

final class DataCapturePresenter {

    // MARK: - Private properties -

    private unowned let _view: DataCaptureViewInterface
    private let _wireframe: DataCaptureWireframeInterface
    private let _interactor: DataCaptureInteractorInterface

    // MARK: - Lifecycle -

    init(wireframe: DataCaptureWireframeInterface, view: DataCaptureViewInterface, interactor: DataCaptureInteractorInterface) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
    }
}

// MARK: - Extensions -

extension DataCapturePresenter: DataCapturePresenterInterface {

    
    
}
