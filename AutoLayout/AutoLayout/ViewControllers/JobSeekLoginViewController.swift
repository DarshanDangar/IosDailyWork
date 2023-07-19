//
//  ViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 13/05/23.
//

import UIKit

class JobSeekLoginViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnLoginWithGoogle: UIButton!
    @IBOutlet weak var btnLoginWithFacebook: UIButton!
    @IBOutlet weak var btnLoginWithApple: UIButton!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
    }
    
    // MARK: setUp TetField
    private func setupTextField() {
        txtEmail.layer.borderWidth = 1.5
        txtEmail.layer.cornerRadius = 10
        txtEmail.layer.borderColor = UIColor(named: Constant.Color.txtBorder)?.cgColor
        txtPassword.layer.borderWidth = 1.5
        txtPassword.layer.cornerRadius = 10
        txtPassword.layer.borderColor = UIColor(named: Constant.Color.txtBorder)?.cgColor
        btnLogin.layer.cornerRadius = 16
        txtEmail.setLeftPaddingWithImageInTextField(padding: 40.0, imageView: Constant.Images.mail)
        txtPassword.setLeftPaddingWithImageInTextField(padding: 40.0, imageView: Constant.Images.password)
        txtPassword.setRightPaddingWithImageInTextField(padding: 40.0, imgName: Constant.Images.show)
    }
    
    override func viewDidLayoutSubviews() {
        btnLoginWithApple.roundView()
        btnLoginWithGoogle.roundView()
        btnLoginWithFacebook.roundView()
    }

}
