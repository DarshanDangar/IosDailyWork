//
//  File.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation
import UIKit

@objc protocol Coordinator {
    
    func start()
    func finish()
    func finishToRootView()
    
}
