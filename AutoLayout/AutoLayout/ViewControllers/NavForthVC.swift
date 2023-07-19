//
//  NavForthVC.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 12/06/23.
//

import UIKit

// MARK: get Window
func getApplicationWindow() -> UIWindow? {
    if #available(iOS 13.0, *) {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            return windowScene.windows.first { $0.isKeyWindow }
        }
    } else {
        return UIApplication.shared.keyWindow
    }
    return nil
}

class NavForthVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnGoThirdVC: UIButton!
    @IBOutlet weak var txtMsg: UITextField!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = .blue
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = .red
    }
    
    // MARK: iniitialSetUp
    private func initialSetup() {
        txtMsg.delegate = self
    }
    
    // MARK: Variables
    weak var dataDelegate: PassDataBackWard?
    var strMsg: String = Constant.emptyString
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    // MARK: IbActions
    @IBAction func btnGoSecondVC(_ sender: UIButton) {
        if let navigationController = navigationController {
            for controller in navigationController.viewControllers {
                if controller.isKind(of: NavSecondVC.classForCoder()) {
                    self.navigationController?.popToViewController(controller, animated: false)
                    //                    dataDelegate?.data(strMsg)
                    break
                }
            }
        }
    }
    
    @IBAction func btnLogOut(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "LogIn")
        guard let homeVC = storyboard?.instantiateViewController(withIdentifier: Constant.viewController.NavHomeVC) as? NavHomeVC else {return}
        guard let window = getApplicationWindow() else {return}
        let nav = UINavigationController(rootViewController: homeVC)
        window.rootViewController = nav
    }
    
    @IBAction func btnGoThirdVC(_ sender: UIButton) {
        dataDelegate?.data(txtMsg.text ?? Constant.emptyString )
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: protocol dataPass
protocol PassDataBackWard: AnyObject {
    func data(_ data: String)
}

// MARK: textField Delegate
extension NavForthVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        strMsg = textField.text ?? Constant.emptyString
    }
}


