//
//  TabBarWithNavigationController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 14/06/23.
//

import UIKit

class TabBarWithNavigationController: UITabBarController {
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item == self.viewControllers?.first?.tabBarItem {
            if let vc1 = self.viewControllers?.first as? UINavigationController {
                vc1.popToRootViewController(animated: false)
            }
        }
    }
    
}
