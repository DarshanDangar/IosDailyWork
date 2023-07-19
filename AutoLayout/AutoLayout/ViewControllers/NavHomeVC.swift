//
//  NavHomeVC.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 10/06/23.
//

import UIKit

class NavHomeVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var txtName: UITextField!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: Variables
    var name: String = Constant.emptyString
    
    // MARK: IbActions
    @IBAction func btnLogIn(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "LogIn")
        guard let tabBar = self.storyboard?.instantiateViewController(withIdentifier: Constant.Navigation.tabBarWithNavigationController) as? TabBarWithNavigationController else {return}
        tabBar.navigationController?.navigationBar.backgroundColor = .cyan
        guard let window = getApplicationWindow() else {return}
        let nav = UINavigationController(rootViewController: tabBar)
        nav.navigationBar.isHidden = true
        window.rootViewController = nav
    }
    
}

// MARK: TxtField Delegate
extension NavHomeVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        name = txtName.text ?? Constant.emptyString
        return true
    }
    
}
