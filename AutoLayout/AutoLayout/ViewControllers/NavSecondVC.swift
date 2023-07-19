//
//  NavSecondVC.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 10/06/23.
//

import UIKit

class NavSecondVC: UIViewController, PassDataBackWard {
    
    // MARK: Outlets
    @IBOutlet weak var lblName: UILabel!
    
    // MARK: Variables
    var lblTxt: String = Constant.emptyString
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lblName.text = lblTxt
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    func data(_ data: String) {
        lblTxt = data
    }
    
    // MARK: IbActions
    @IBAction func btnGoThirdVC(_ sender: Any) {
        guard let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: Constant.viewController.navThirdVc) as? NavThirdVc else {return}
        thirdVC.nameGetFirst = lblTxt
        thirdVC.thirdDelegate = self
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
}

