//
//  StepperViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 27/05/23.
//

import UIKit

class StepperViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var lblStepCount: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var stepperCount: UIStepper!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.color = UIColor.blue
        lblStepCount.text = "\(stepperCount.value)"
    }
    
    // MARK: IbActions
    @IBAction func stepperCountUpdate(_ sender: UIStepper) {
        activityIndicator.startAnimating()
        lblStepCount.text =  "\(sender.value)"
        if sender.value < 5 {
            
            imgView.transform = CGAffineTransform(scaleX: sender.value, y: sender.value)
        } else {
            activityIndicator.stopAnimating()
            activityIndicator.hidesWhenStopped = true
        }
    }
    
}
