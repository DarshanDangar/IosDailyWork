//
//  File.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

@objc protocol Coordinator {
    
    var navigationController: UINavigationController {get set}
    @objc optional func popVc()
    
}

//func initiateVC(storyBoardName: String, identifier: String, navigationController: UINavigationController) {
//    let storyboard = UIStoryboard(name: storyBoardName , bundle: nil)
//    let vc = storyboard.instantiateViewController(withIdentifier: identifier)
//    navigationController.pushViewController(vc, animated: true)
//}
