//
//  PHPickerViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 29/05/23.
//

import UIKit
import PhotosUI
import AVKit
import AVFoundation

class PHPickerImageViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var imageOnImageView: UIImageView!
    
    // MARK: Variables
    var imageArray = [UIImage]()
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IbActions
    @IBAction func onTapSelectImage(_ sender: UIButton) {
        var config = PHPickerConfiguration()
        config.selectionLimit = 3
        let phPickerVc = PHPickerViewController(configuration: config)
        phPickerVc.delegate = self
        self.present(phPickerVc, animated: true)
    }
    
    // MARK: setImage
    func setImageOnImageView() {
        var index = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.imageOnImageView.image = self?.imageArray[index]
            index += 1
            if index == self?.imageArray.count {
                index = index % (self?.imageArray.count)!
            }
        }
    }
    
}

// MARK: PHPicker Delegate
extension PHPickerImageViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        results.forEach { result in
            result.itemProvider.loadObject(ofClass: UIImage.self) { images, error in
                if let error = error {
                    print("error of Image", error.localizedDescription)
                    return
                }
                if let image = images as? UIImage {
                    self.imageArray.append(image)
                }
            }
            
            result.itemProvider.loadItem(forTypeIdentifier: UTType.movie.identifier, options: nil) { [weak self] (url, error) in
                if let error = error {
                    print("error of Video", error.localizedDescription)
                }
                
                if let videoURL = url as? URL {
                    // Handle the video URL
                    // You can use AVPlayerViewController to present the video
                    
                    let playerViewController = AVPlayerViewController()
                    let player = AVPlayer(url: videoURL)
                    playerViewController.player = player
                    
                    DispatchQueue.main.async {
                        self?.present(playerViewController, animated: true) {
                            player.play()
                        }
                    }
                }
            }
            
        }
        
        if self.imageArray.count > 1 {
            setImageOnImageView()
        }
    }
    
}
