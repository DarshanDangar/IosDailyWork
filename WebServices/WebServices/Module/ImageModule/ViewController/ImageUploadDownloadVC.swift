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
    }
    
    // MARK: Variables
    let imageVM = ImageUploadDownloadVM()
    var coordinator: ButtonCoordinator?
    
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
