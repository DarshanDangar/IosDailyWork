//
//  File.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if UserDefaults.standard.bool(forKey: "login") {
            let homeCoordinator = ButtonCoordinator(navigationController: navigationController ?? UINavigationController())
            homeCoordinator.start()
        } else {
            let homeCoordinator = LoginCoordinator(navigationController: navigationController ?? UINavigationController())
            homeCoordinator.start()
        }
    }
    
    func finish() {
        
    }
    
    func finishToRootView() {
        
    }
    
}
