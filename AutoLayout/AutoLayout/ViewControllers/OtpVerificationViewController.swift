//
//  OtpVerificationViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 25/05/23.
//

import UIKit

class OtpVerificationViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var txtOtpSection1: UITextField!
    @IBOutlet weak var txtOtpSection4: UITextField!
    @IBOutlet weak var txtOtpSection3: UITextField!
    @IBOutlet weak var txtOtpSection2: UITextField!
    @IBOutlet weak var btnVerify: UIButton!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setTxtOtpSection()
    }
    
    // MARK: set Otp Section
    private func setTxtOtpSection() {
        txtOtpSection1.becomeFirstResponder()
        txtOtpSection1.layer.borderWidth = 1
        txtOtpSection1.layer.borderColor = UIColor(named: Constant.Color.grayModify)?.cgColor
        txtOtpSection2.layer.borderWidth = 1
        txtOtpSection2.layer.borderColor = UIColor(named: Constant.Color.grayModify)?.cgColor
        txtOtpSection3.layer.borderWidth = 1
        txtOtpSection3.layer.borderColor = UIColor(named: Constant.Color.grayModify)?.cgColor
        txtOtpSection4.layer.borderWidth = 1
        txtOtpSection4.layer.borderColor = UIColor(named: Constant.Color.grayModify)?.cgColor
        btnVerify.layer.cornerRadius = 16
    }
    
}

// MARK: TextField Delegate
extension OtpVerificationViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if range.length < 1 {
            if let text = textField.text,
               let textRange = Range(range, in: text) {
                let updatedText = text.replacingCharacters(in: textRange, with: string)
                textField.text = updatedText
                textField.layer.borderColor = UIColor(named: Constant.Color.spotifyGreen)?.cgColor
                switch textField {
                case txtOtpSection1:
                    txtOtpSection2.becomeFirstResponder()
                case txtOtpSection2:
                    txtOtpSection3.becomeFirstResponder()
                case txtOtpSection3:
                    txtOtpSection4.becomeFirstResponder()
                case txtOtpSection4:
                    txtOtpSection4.resignFirstResponder()
                default:
                    break
                }
                return true
            }
            
        } else {
            textField.text = Constant.emptyString
            textField.layer.borderColor = UIColor(named: Constant.Color.grayModify)?.cgColor
            switch textField {
            case txtOtpSection2:
                txtOtpSection1.becomeFirstResponder()
            case txtOtpSection3:
                txtOtpSection2.becomeFirstResponder()
            case txtOtpSection4:
                txtOtpSection3.becomeFirstResponder()
            default:
                break
            }
        }
        return false
    }
    
}
