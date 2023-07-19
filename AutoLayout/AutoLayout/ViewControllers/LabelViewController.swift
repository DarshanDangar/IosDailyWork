//
//  LabelViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 23/05/23.
//

import UIKit

class LabelViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblView: UILabel!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
    }
    
    // MARK: setUp Label
    private func setUpLabel() {
        let lblFullName = UILabel(frame: CGRect(x: 40, y: 600, width: view.bounds.size.width*0.8, height: 30))
        view.addSubview(lblFullName)
        lblFullName.backgroundColor = .red
        lblFullName.text = Constant.Title.name
        lblFullName.textColor = .black
        lblFullName.textAlignment = .center
        lblName.textColor = UIColor.red
        lblName.text = Constant.Title.name
        lblName.isEnabled = true
        lblName.textAlignment = NSTextAlignment.center
        lblView.adjustsFontSizeToFitWidth = true
    }
    
}
