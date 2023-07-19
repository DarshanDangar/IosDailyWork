//
//  Button.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import Foundation
import UIKit

extension UIView {
    
    func cornerRadius(_ radius: Double) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    func roundView() {
        let roundView = (self.frame.height / 2)
        cornerRadius(roundView)
    }
    
    func setBorderStyle(_ width: Double, _ color: CGColor) {
        self.layer.borderWidth = width
        layer.borderColor = color
    }
    
}
