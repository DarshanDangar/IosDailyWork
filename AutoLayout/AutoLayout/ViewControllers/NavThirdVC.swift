//
//  NavThirdVc.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 12/06/23.
//

import UIKit

class NavThirdVc: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var lblNamegetTxtName: UILabel!
    
    // MARK: Variables
    var nameGetFirst: String = Constant.emptyString
    weak var thirdDelegate: PassDataBackWard?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lblNamegetTxtName.text = nameGetFirst
    }
    
    func data(_ data: String) {
        nameGetFirst = data
    }
    
    // MARK: IbActions
    @IBAction func btnFourthVC(_ sender: UIButton) {
        guard let fourthVC = self.storyboard?.instantiateViewController(withIdentifier: Constant.viewController.navForthVC) as? NavForthVC else {return}
        fourthVC.dataDelegate = thirdDelegate
        self.navigationController?.pushViewController(fourthVC, animated: true)
    }
}


