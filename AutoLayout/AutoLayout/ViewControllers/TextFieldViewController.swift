//
//  TextFieldViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 25/05/23.
//

import UIKit

class TextFieldViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnvisiblePassword: UIButton!
    @IBOutlet weak var conformPassword: UITextField!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTextField()
    }
    
    // MARK: setUp TextField
    private func setUpTextField() {
        txtEmail.becomeFirstResponder()
    }
    
    // MARK: IbActions
    @IBAction func btnVisiblePasswordAction(_ sender: UIButton) {
        if btnvisiblePassword.isSelected {
            conformPassword.isSecureTextEntry = true
            btnvisiblePassword.isSelected = false
        } else {
            conformPassword.isSecureTextEntry = false
            btnvisiblePassword.isSelected = true
        }
    }
    
    // MARK: Email Validation
    func isValidEmailAddr(strToValidate: String) -> Bool {
        let emailValidationRegex = Constant.Validation.emailValidationRegex
        
        let emailValidationPredicate = NSPredicate(format: Constant.Validation.emailValidationPredicate, emailValidationRegex)
        
        return emailValidationPredicate.evaluate(with: strToValidate)
    }
}

// MARK: TextField Delegate
extension TextFieldViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == txtPassword {
            if range.location > 8 {
                return true
            }
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtEmail {
            let isValid = isValidEmailAddr(strToValidate: textField.text ?? Constant.emptyString)
            
            if isValid {
                txtPassword.becomeFirstResponder()
            }
        }
        return true
    }
    
}
