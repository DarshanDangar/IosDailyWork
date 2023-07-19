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
    
    var onApiError = Dynamic<Error?>(nil)
    var onApiSucess = Dynamic<Data?>(nil)
    
    func validation(email: String = Constants.emptyString, password: String = Constants.emptyString) {
        if !email.isEmpty && !password.isEmpty {
            let user = SignIn(email: email, password: password)
            let parameter = [
                "email": user.email,
                "password": user.password
            ]
            guard let baseUrl = Bundle.main.object(forInfoDictionaryKey: "baseUrl") as? String else {return}
            
            AF.request("\(baseUrl)api/login", method: .post, parameters: parameter).response { response in
                switch response.result {
                case .success(let data):
                    self.onApiSucess.value = data
                case .failure(let error):
                    self.onApiError.value = error
                }
            }
        }
    }
}
