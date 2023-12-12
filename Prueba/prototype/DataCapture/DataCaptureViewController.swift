//
//  DataCaptureViewController.swift
//  Prueba
//
//  Created by Johnne Lemand on 10/12/23.
//
import Foundation
import UIKit
import AVKit

class DataCaptureViewController: UIViewController {
    
    var presenter: DataCapturePresenterInterface!
    
//    var receivedOptions: [Option] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DataCaptureViewController: DataCaptureViewInterface {
    
}
