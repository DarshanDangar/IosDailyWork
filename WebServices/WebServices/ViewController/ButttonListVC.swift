//
//  ButttonListVC.swift
//  WebServices
//
//  Created by Darshan Dangar on 18/07/23.
//

import UIKit

class ButttonListVC: UIViewController {
    
    // MARK: Variables
    var coordinator: ButtonCoordinator?
    var coordinatorLogin: LoginCoordinator?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IbActions
    @IBAction func btnRegister(_ sender: Any) {
        coordinator?.gotoRegister()
    }
    
    @IBAction func btnUploadDownload(_ sender: Any) {
        coordinator?.gotoUploadDownload()
    }
    
    @IBAction func btnNews(_ sender: Any) {
        coordinator?.gotoNews()
    }
    
    @IBAction func btnUserList(_ sender: Any) {
        coordinator?.gotoUserList()
    }
}
