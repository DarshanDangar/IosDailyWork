//
//  PeopleListVM.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import Foundation

class PeoopleVm {
    
    var userList = Dynamic<[Datum]>([])
    var onApiSucess = Dynamic<People?>(nil)
    var onApiError = Dynamic<Error?>(nil)
    
    func getDatafromServer() {
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        let dataaTask = URLSession.shared.dataTask(with: urlRequest) { data,response,error in
            guard let data = data else {return}
            guard response != nil else {return}
            if let error = error {
                self.onApiError.value = error
            }
            
            do {
                let jsonData = try JSONDecoder().decode(People.self, from: data)
                self.onApiSucess.value = jsonData
                self.userList.value = jsonData.data
            } catch(let error) {
                self.onApiError.value = error
            }
            
        }
        dataaTask.resume()
    }
    
}
