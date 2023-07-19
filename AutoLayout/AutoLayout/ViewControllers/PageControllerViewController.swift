//
//  PageControllerViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 29/05/23.
//

import UIKit

class PageControllerViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var lblCurrentPage: UILabel!
    @IBOutlet weak var btnPageController: UIPageControl!
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCurrentPage.text = "1"
        btnPageController.preferredIndicatorImage = UIImage(named: Constant.Images.facebook32)
    }
    
    // MARK: IbActions
    @IBAction func onTapPageController(_ sender: UIPageControl) {
        lblCurrentPage.text =  "\(sender.currentPage + 1)" + " " + "\(sender.numberOfPages)"
        if #available(iOS 16.0, *) {
            btnPageController.setCurrentPageIndicatorImage(UIImage(named: "videoplayer"), forPage: btnPageController.currentPage)
        } else {
            // Fallback on earlier versions
        }
    }
    
}
