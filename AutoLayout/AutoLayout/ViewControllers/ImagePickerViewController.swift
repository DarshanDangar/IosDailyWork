//
//  ImagePickerViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 27/05/23.
//
import PhotosUI
import UIKit

class ImagePickerViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var imageViewForSelectImage: UIImageView!
    @IBOutlet weak var btnSelectImage: UIButton!
    
    // MARK: Variables
    var imageArray: [UIImage] = []
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IbActions
    @IBAction func onTapSelectImageButton(_ sender: UIButton) {
        let imageController = UIImagePickerController()
        imageController.delegate = self
        imageController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(imageController, animated: true)
    }
    
}

// MARK: ImagePicker Delegate and NavigationController Delegate
extension ImagePickerViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageViewForSelectImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        dismiss(animated: true)
    }
    
}

