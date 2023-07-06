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
    
//    var onApiError:((String) -> Void)?
    var onApiError = Dynamic<String?>("")
    
    func validation(email: String = "", password: String = "", compliition: @escaping() -> ()) {
        if !email.isEmpty && !password.isEmpty {
            let user = SignIn(email: email, password: password)
            let parameter = [
                "email": user.email,
                "password": user.password
            ]
            AF.request("https://reqres.in/api/login", method: .post, parameters: parameter).response { response in
                switch response.result {
                case .success(let data):
                    print(data)
                    compliition()
                    self.onApiError.value = ""
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}

// get request with Alamofire
//            AF.request("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=437be1e793b144ef85c0b8ffae9b36c5").responseJSON{ response in
//                switch response.result {
//                case .success:
//                    if let value = response.value {
//                        print(value)
//                    }
//                    compliition()
//                case .failure(let error):
//                    print(error.localizedDescription)
//                }
//            }
