//
//  TextViewViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 26/05/23.
//

import UIKit

class TextViewViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var txtViewOpacitySlider: UISlider!
    @IBOutlet weak var txtView2: UITextView!
    @IBOutlet weak var txtView1: UITextView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        txtView1.layer.borderWidth = 1
        txtView2.layer.borderWidth = 1
        txtView1.delegate = self
        txtView2.delegate = self
        txtView1.layer.borderColor = UIColor.red.cgColor
        txtView2.layer.borderColor = UIColor.red.cgColor
        txtViewOpacitySlider.setThumbImage(UIImage(named: Constant.Images.facebook32), for: .normal)
        progressView.layer.cornerRadius = 16
    }
    
    // MARK: IbActions
    @IBAction func sliderAction(_ sender: UISlider) {
        txtView1.alpha = CGFloat( txtViewOpacitySlider.value)
        txtView2.alpha = CGFloat( txtViewOpacitySlider.value)
        progressView.progress = txtViewOpacitySlider.value
    }
    
}

// MARK: TextView Delegate
extension TextViewViewController: UITextViewDelegate {
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if textView == txtView1 {
            textView.layer.borderColor = UIColor.blue.cgColor
            self.sliderAction(txtViewOpacitySlider)
        } else if textView == txtView2 {
            textView.layer.borderColor = UIColor.blue.cgColor
            self.sliderAction(txtViewOpacitySlider)
        }
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView == txtView1 {
            textView.layer.borderColor = UIColor.red.cgColor
        } else if textView == txtView2 {
            textView.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
    
}
