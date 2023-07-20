//
//  UploadDownloadVM.swift
//  WebServices
//
//  Created by Darshan Dangar on 05/07/23.
//

import Foundation
import UIKit


class ImageUploadDownloadVM {
    var onApiError: ((String) -> Void)?
    var uploadImage: (() -> ())?
    var downloadImage: ((UIImage) -> ())?
    var image: DataClass?
    
    func setUpMultiPartData(paramName: String, fileName: String?, image: UIImage, boundary: String) -> Data {
        var data = Data()
        data.append("\r\n--\(boundary)\r\n".data(using: .utf8) ?? Data())
        if let fileName {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8) ?? Data())
        }
        else {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"\r\n".data(using: .utf8) ?? Data())
        }
        data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8) ?? Data())
        data.append(image.pngData() ?? Data())
        data.append("\r\n--\(boundary)--\r\n".data(using: .utf8) ?? Data())
        return data
    }
    
    func uploadData<T: Decodable>(image: UIImage, type : T.Type , completion : @escaping ((Result<T,Error>) -> ()) ) {
        guard let baseUrl = Bundle.main.object(forInfoDictionaryKey: "baseUrlImage") as? String else {return}
        if var url = URL(string: "\(baseUrl)1/upload") {
            url.append(queryItems: [URLQueryItem(name: "key", value: "c37d253b34319722a9255ae7dfb1fcc2")])
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            let boundary = UUID().uuidString
            urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
            let data = setUpMultiPartData(paramName: "image", fileName: "Natural", image: image, boundary: boundary)
            let uploadTask = URLSession.shared.uploadTask(with: urlRequest, from: data) { data, response, error in
                if let data {
                    do {
                        let response = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(response))
                    } catch let error {
                        print("error \(error)")
                    }
                }
            }
            uploadTask.resume()
        }
    }
    
    func downLoadaImage(url: URL, imaget: @escaping ((UIImage) -> ())) {
        let url = url
        guard let data = try? Data(contentsOf: url) else {return}
        guard let image = UIImage(data: data) else {return}
        imaget(image)
    }
}
