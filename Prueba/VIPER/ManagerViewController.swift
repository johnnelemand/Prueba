import UIKit
import AppTrackingTransparency

class ManagerViewController: UIViewController {
    
    var manageKeyBoard = false
    var manageFullLoad = false
    var navigationBarStyle: NavigationBarStyle = .blue

   
    private var isgeneralLoadingViewVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBarStyle()
        if manageKeyBoard {
            registerKeyBoardNotifications()
        }
        
        validateATTrackingAuthorization()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        setBlueNavigationBarStyle()
        if manageKeyBoard {
            unregisterKeyBoardNotifications()
        }
        
    }
    
    // MARK: - Navigation Bar Style
    private func configureNavigationBarStyle() {
        switch navigationBarStyle {
        case .blue:
            setBlueNavigationBarStyle()
        case .white:
            setWhiteNavigationBarStyle()
        }
    }
    
    private func setBlueNavigationBarStyle() {
        let textAttributes:[NSAttributedString.Key : Any] = [NSAttributedString.Key.foregroundColor: UIColor(named: "Blue Text")!]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        navigationController?.navigationBar.tintColor = UIColor(named: "Blue Text")
    }
    
    private func setWhiteNavigationBarStyle() {
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        navigationController?.navigationBar.tintColor = .white
    }
    
    // MARK: - Keyboard
    private func registerKeyBoardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    private func unregisterKeyBoardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        // Override func when you need to manage keyboard
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        // Override func when you need to manage keyboard
    }
    
    func setTranslucentNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    private func validateATTrackingAuthorization () {
        DispatchQueue.main.async {
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    
                }
            } else {
            }
        }
    }
}

