//
//  HomeCoordinator.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let loginVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.loginVC) as? LoginVC else {
            return
        }
        loginVC.coordinator = self
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    func gotoButtonList() {
        let buttonCoordinator = ButtonCoordinator(navigationController: navigationController ?? UINavigationController())
        buttonCoordinator.start()
    }
    
    func finish() {
        
    }
    
    func finishToRootView() {
        
    }
    
}
