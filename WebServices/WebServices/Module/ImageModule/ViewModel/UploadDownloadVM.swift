//
//  UploadDownloadVM.swift
//  WebServices
//
//  Created by Darshan Dangar on 05/07/23.
//

import Foundation
import UIKit

class ImageUploadDownloadVM: NSObject {
    var onApiError: ((String) -> Void)?
    var uploadImage: (() -> ())?
    var downloadImage: ((UIImage) -> ())?
    var image: DataClass?
    
    //            func uploadImageToServer<T: Decodable>(image: UIImage, type : T.Type , completion : @escaping ((Result<T,Error>) -> ()) ) {
    //                guard var url = URL(string: "https://api.imgbb.com/1/upload") else {return}
    //                url.append(queryItems: [URLQueryItem(name: "key", value: "c37d253b34319722a9255ae7dfb1fcc2")])
    //                var request = URLRequest(url: url)
    //                request.httpMethod = "Post"
    //                let boundary = UUID().uuidString
    //                request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
    //                let data = setUpMultiPartData(paramName: "image", fileName: "ShortHand", image: image, boundary: boundary)
    //                let uploadTask = URLSession.shared.uploadTask(with: request, from: data) { data, response, error in
    //                    if let data = data {
    //                        do {
    //                            let response = try JSONDecoder().decode(ImageUploadModel, from: data)
    //                            completion(.success(response))
    //                        } catch let error {
    //                            print("error \(error)")
    //                        }
    //                    }
    //                }
    //        //        guard let imageData = image?.jpegData(compressionQuality: 1) else {return}
    //                request.httpBody = try? JSONEncoder().encode(image)
    //
    //                let uploadTask = URLSession.shared.uploadTask(with: request, from: request.httpBody) { (data, urlResponse, error) in
    //
    //                           if let data = data {
    //                               do {
    //                                   let response = try JSONDecoder().decode(ImageUploadModel.self, from: data)
    //                                   print(response)
    //                               } catch let error {
    //                                   print("error \(error)")
    //                               }
    //                           }
    //                       }
    //                       uploadTask.resume()
    //                   }
    //
    //                let dataTask = URLSession.shared.dataTask(with: request) { data,response,error in
    //                    guard let data = data else {return}
    //                    guard let response = response else {return}
    //                    guard let error = error else {return}
    //                }
    //        }
    
    func setUpMultiPartData(paramName: String, fileName: String?, image: UIImage, boundary: String) -> Data {
        var data = Data()
        data.append("\r\n--\(boundary)\r\n".data(using: .utf8) ?? Data())
        if let fileName {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8) ?? Data())
        }
        else {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"\r\n".data(using: .utf8) ?? Data())
        }
        //            data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n" ?? "")
        data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8) ?? Data())
        data.append(image.pngData() ?? Data())
        data.append("\r\n--\(boundary)--\r\n".data(using: .utf8) ?? Data())
        return data
    }
    
    //   func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
    //       DispatchQueue.main.async {
    //           self.progessView.setProgress(Float(totalBytesSent/totalBytesExpectedToSend), animated: true)
    //       }
    //   }
    
    func uploadData<T: Decodable>(image: UIImage, type : T.Type , completion : @escaping ((Result<T,Error>) -> ()) ) {
        if var url = URL(string: "https://api.imgbb.com/1/upload") {
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
            //uploadTask.delegate = self
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
