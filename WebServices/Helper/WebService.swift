//
//  WebService.swift
//  WebServices
//
//  Created by Darshan Dangar on 03/07/23.
//

import UIKit
import Foundation

class WebService {
    
    static var shared = WebService()
    
    func getUrl<T: Codable>(url: URL, type: String, parameter: Codable? = nil,completion: @escaping (Result<T, Error>) -> Void) {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = type
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if urlRequest.httpMethod == "POST" {
            if let parameter = parameter {
                do {
                    urlRequest.httpBody = try JSONEncoder().encode(parameter)
                } catch {
                    completion(.failure(error))
                    return
                }
            }
            
        }
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else {return}
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {return}
            print(response.statusCode)
            if let error = error {
                completion(.failure(error))
            }
            
            do {
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            } catch {
                completion(.failure(error))
            }
            
        }
        dataTask.resume()
    }
    
}
