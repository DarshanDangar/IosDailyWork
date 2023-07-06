//
//  File.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var window: UIWindow
    
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        let homeCoordinator = LoginCoordinator(navigationController: navigationController, window: window)
        homeCoordinator.start()
    }
    
}
