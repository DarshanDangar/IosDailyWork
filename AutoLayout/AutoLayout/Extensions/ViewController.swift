//
//  ViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 12/06/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func dismissViewControllers() {

        guard let vc = self.presentingViewController else { return }

        while (vc.presentingViewController != nil) {
            vc.dismiss(animated: true, completion: nil)
        }
    }
    
}
