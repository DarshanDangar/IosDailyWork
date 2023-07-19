//
//  ForgotPasswordViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 26/05/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnSendCode: UIButton!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IbActions
    @IBAction func segmentController(_ sender: UISegmentedControl) {
        if segmentController.selectedSegmentIndex == 0 {
            txtField.setLeftPaddingWithImageInTextField(padding: 40.0, imageView: Constant.Images.mail)
            
        } else {
            txtField.setLeftPaddingWithImageInTextField(padding: 40.0, imageView: Constant.Images.smartPhone)
        }
    }
    
}
