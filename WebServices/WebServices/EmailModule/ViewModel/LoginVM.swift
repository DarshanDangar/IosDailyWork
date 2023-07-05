//
//  LoginVM.swift
//  WebServices
//
//  Created by Darshan Dangar on 05/07/23.
//

import Foundation
import UIKit
import Alamofire

class LoginVM: NSObject {
    var onApiError:((String) -> Void)?
    
    func validation(email: String, password: String, compliition: @escaping() -> ()) {
        if !email.isEmpty && !password.isEmpty {
            
        }
    }
}
