//
//  HomeCoordinator.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var window: UIWindow
    
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        guard let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC else {
            return
        }
        loginVC.coordinator = self
        navigationController.pushViewController(loginVC, animated: true)
    }
    
    func gotoNewsCoordinator() {
        guard let newsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        newsVC.coordinator = self
        navigationController.pushViewController(newsVC, animated: true)
    }
    
    
}
