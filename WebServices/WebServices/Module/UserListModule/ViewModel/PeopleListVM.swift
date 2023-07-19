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
    var currentPage = Dynamic<Int>(0)
    var totalPage = Dynamic<Int>(0)
    var isLoading = Dynamic<Bool>(false)
    
    func getDatafromServer() {
        let baseUrl = Bundle.main.object(forInfoDictionaryKey: "baseUrl") as? String ?? ""
        currentPage.value += 1
        guard let url = URL(string: baseUrl+"api/users?page=\(self.currentPage.value)&delay=2") else {
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
                self.userList.value += jsonData.data
                self.totalPage.value = jsonData.totalPages
                self.isLoading.value = false
            } catch(let error) {
                self.onApiError.value = error
                self.currentPage.value -= 1
                self.isLoading.value = true
            }
            
        }
        dataaTask.resume()
    }
    
}
