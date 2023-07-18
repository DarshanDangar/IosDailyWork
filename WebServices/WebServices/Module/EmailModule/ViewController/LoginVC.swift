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
    var coordinator: LoginCoordinator?
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        loginVM.onApiError.bind({ error in
            print(error?.localizedDescription ?? Constants.emptyString)
        })
        loginVM.onApiSucess.bind({ [weak self] data in
            UserDefaults.standard.set(true, forKey: "login")
            self?.coordinator?.gotoButtonList()
        })
    }
    
    // MARK: IbActions
    @IBAction func btnLogIn(_ sender: Any) {
        loginVM.validation(email: tfEmail.text ?? Constants.emptyString, password: tfPassword.text ?? Constants.emptyString)
    }
    
}
