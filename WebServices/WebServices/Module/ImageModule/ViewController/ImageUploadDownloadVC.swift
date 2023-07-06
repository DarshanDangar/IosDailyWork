//
//  ImageUploadDownloadVC.swift
//  WebServices
//
//  Created by Darshan Dangar on 05/07/23.
//

import UIKit
import PhotosUI

class ImageUploadDownloadVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tfUrl: UITextField!
    @IBOutlet weak var imgDownload: UIImageView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        
    }
    
    // MARK: Variables
    let imageVM = ImageUploadDownloadVM()
    
    // MARK: IbActions
    @IBAction func btnUploadImage(_ sender: Any) {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        let phPickerVc = PHPickerViewController(configuration: config)
        phPickerVc.delegate = self
        self.present(phPickerVc, animated: true)
    }
    
    @IBAction func btnDownload(_ sender: Any) {
        guard let url = URL(string: tfUrl.text ?? Constants.emptyString) else {return}
        imageVM.downLoadaImage(url: url) { image in
            self.tfUrl.text = Constants.emptyString
            self.imgDownload.image = image
//            self.bindViewModel()
        }
    }
    
    func bindViewModel() {
        imageVM.onApiError = { error in
            print(error)
        }
        imageVM.downloadImage = { image in
            self.imgDownload.image = image
            print("Download Sucessfully")
        }
        imageVM.uploadImage = {
            print("Upload Image")
        }
    }
    
}

extension ImageUploadDownloadVC: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        results.forEach { result in
            result.itemProvider.loadObject(ofClass: UIImage.self) { images, error in
                if let error = error {
                    print("error of Image", error.localizedDescription)
                    return
                }
                if let image = images as? UIImage {
                    self.imageVM.uploadData(image: image, type: ImageUploadModel.self) { _ in
                        
                    }
                }
            }
        }
    }
    
}
//
//extension ImageUploadDownloadVC {
//    func setUpMultiPartData(paramName: String, fileName: String?, image: UIImage, boundary: String) -> Data {
//            var data = Data()
//            data.append("\r\n--\(boundary)\r\n".data(using: .utf8) ?? Data())
//            if let fileName {
//                data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8) ?? Data())
//            }
//            else {
//                data.append("Content-Disposition: form-data; name=\"\(paramName)\"\r\n".data(using: .utf8) ?? Data())
//            }
//            //            data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n" ?? "")
//            data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8) ?? Data())
//            data.append(image.pngData() ?? Data())
//            data.append("\r\n--\(boundary)--\r\n".data(using: .utf8) ?? Data())
//            return data
//        }
//        
////        func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
////            DispatchQueue.main.async {
////                self.progessView.setProgress(Float(totalBytesSent/totalBytesExpectedToSend), animated: true)
////            }
////        }
//        
//        func uploadData<T: Decodable>(image: UIImage, type : T.Type , completion : @escaping ((Result<T,Error>) -> ()) ) {
//            if var url = URL(string: "https://api.imgbb.com/1/upload") {
//                url.append(queryItems: [URLQueryItem(name: "key", value: "dd7832bb31a876cce8cc739a31728d44")])
//                var urlRequest = URLRequest(url: url)
//                urlRequest.httpMethod = "POST"
//                let boundary = UUID().uuidString
//                urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
//                let data = setUpMultiPartData(paramName: "image", fileName: "ShortHand", image: image, boundary: boundary)
//                let uploadTask = URLSession.shared.uploadTask(with: urlRequest, from: data) { data, response, error in
//                    if let data {
//                        do {
//                            let response = try JSONDecoder().decode(T.self, from: data)
//                            completion(.success(response))
//                        } catch let error {
//                            print("error \(error)")
//                        }
//                    }
//                }
////                uploadTask.delegate = self
//                uploadTask.resume()
//            }
//        }
//}
