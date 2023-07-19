//
//  File.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

extension UISegmentedControl {
    func setTitleColor(_ color: UIColor, state: UIControl.State = .normal) {
           var attributes = self.titleTextAttributes(for: state) ?? [:]
           attributes[.foregroundColor] = color
           self.setTitleTextAttributes(attributes, for: state)
       }
}
