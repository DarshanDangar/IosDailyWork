//
//  LoginVC.swift
//  WebServices
//
//  Created by Darshan Dangar on 05/07/23.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    // MARK: Variables
    let loginVM = LoginVM()
    let alert = UIAlertController(title: "Sucessfully", message: "Login SucessFully", preferredStyle: .alert)
    var coordinator: LoginCoordinator?
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.addAction(UIAlertAction(title: "OK", style: .default))
    }
    
    func bindViewModel() {
        loginVM.onApiError.bind({ error in
            print(error?.localizedDescription ?? "")
        })
        loginVM.onApiSucess.bind({ data in
            self.coordinator?.gotoNewsCoordinator()
            self.present(self.alert, animated: true)
        })
    }
    
    // MARK: IbActions
    @IBAction func btnLogIn(_ sender: Any) {
        loginVM.validation(email: tfEmail.text ?? Constants.emptyString, password: tfPassword.text ?? Constants.emptyString)
    }
    
}
