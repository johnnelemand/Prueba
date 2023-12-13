//
//  prototypeViewController.swift
//  Prueba
//
//  Created by Johnne Lemand on 07/12/23.
//

import UIKit

class prototypeViewController: UIViewController{

    var presenter: prototypePresenterInterface!
    
    @IBOutlet weak var contact: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    
    var dataNav: UINavigationController = UINavigationController()
    var options: [Option] = [
            Option(title: "Cámara", isSelected: false),
            Option(title: "Foto", isSelected: false),
            Option(title: "Nombre completo", isSelected: false),
            Option(title: "Número telefónico", isSelected: false),
            Option(title: "Fecha de nacimiento", isSelected: false),
            Option(title: "Sexo", isSelected: false),
            Option(title: "Color favorito", isSelected: false)
        ]
    
     override func viewDidLoad() {
         super.viewDidLoad()
         
         contact.delegate = self
         contact.dataSource = self
         
        
        
         //BUTTON PROPIETIES
         nextButton.layer.cornerRadius = nextButton.frame.height / 2

         nextButton.setTitle("Siguiente", for: .normal)
         nextButton.setTitleColor(.white, for: .normal)
         nextButton.backgroundColor = .blue
         nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)

         
          
         //register cell
         contact.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
                // Perform actions for the selected options
                let selectedOptions = options.filter { $0.isSelected }
                // Your logic to determine actions based on selected options
                for option in selectedOptions {
                    switch option.title {
                    case "Cámara":
                        
                        break
                    case "Foto":
                         
                        break
                    case "Nombre completo":
                        
                        break
                    case "Número telefónico":
                        
                        break
                    case "Fecha de nacimiento":
                        
                        break
                    case "Sexo":
                        
                        break
                    case "Color favorito":
                        
                        break
                    default:
                        break
                    }
                }
                
        presenter.performPassData(datoscam: "data" )
            }
    
//    func openCamera(){
//        let imagePiker = UIImagePickerController()
//        imagePiker.delegate = self
//        imagePiker.sourceType = .camera
//        imagePiker.allowsEditing = false
//
//        present(imagePiker, animated: true, completion: nil)
//    }
//}
//

//extension prototypeViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//            // Aquí puedes utilizar la imagen capturada, por ejemplo, mostrarla en un imageView
//            // imageView.image = pickedImage
//        }
//
//        picker.dismiss(animated: true, completion: nil)
//    }
//
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
    
}

extension prototypeViewController: UITableViewDelegate, UITableViewDataSource{
    //in this func the number of cells that we are going to return
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let option = options[indexPath.row]
               cell.textLabel?.text = option.title
               cell.accessoryType = option.isSelected ? .checkmark : .none

               return cell
    }
    
    // MARK: - TableView Delegate Methods

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         options[indexPath.row].isSelected = !options[indexPath.row].isSelected
         tableView.reloadRows(at: [indexPath], with: .automatic)
         validateSelection()
     }

     // Function to validate at least one option is selected
     func validateSelection() {
         let selectedOptions = options.filter { $0.isSelected }
         let isAtLeastOneSelected = selectedOptions.count > 0
         
         // Perform actions based on validation
         if isAtLeastOneSelected {
             // At least one option is selected
             // Your additional logic here
             nextButton.isEnabled = true
             
         } else {
             // None selected
             // Your additional logic here
             nextButton.isEnabled = false
         }
     }
}


extension prototypeViewController: prototypeViewInterface {
    
}
