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
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bindViewModel() {
        
    }
    
    // MARK: IbActions
    @IBAction func btnLogIn(_ sender: Any) {
        
    }
    
}
