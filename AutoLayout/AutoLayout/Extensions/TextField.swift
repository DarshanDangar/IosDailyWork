//
//  TextField.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftMarginInTextField(padding: Double) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
    func setRightMarginInTextField(padding: Double) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
    func setLeftPaddingWithImageInTextField(padding: Double, imageView: String) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0.0, y: 0.0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 10, y: 10, width: padding-20, height: self.frame.size.height - 20.0)
        imgView.tintColor = UIColor.black
        imgView.image = UIImage.init(named: imageView)
        leftView.addSubview(imgView)
        self.leftView = leftView
        self.leftViewMode = .whileEditing
    }
    
    func setRightPaddingWithImageInTextField(padding: Double, imgName: String) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 10, y: 12, width: padding-25, height: self.frame.size.height - 25.0)
        imgView.tintColor = UIColor.white
        imgView.image = UIImage.init(named: imgName)
        rightView.addSubview(imgView)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
}
