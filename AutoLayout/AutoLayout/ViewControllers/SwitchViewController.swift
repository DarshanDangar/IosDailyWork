//
//  SwitchViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 24/05/23.
//

import UIKit

class SwitchViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnisDesigner: UIButton!
    @IBOutlet weak var btnisDeveloper: UIButton!
    @IBOutlet weak var btnisAdministrative: UIButton!
    @IBOutlet weak var switchSelect: UISwitch!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IbActions
    @IBAction func switchTap(_ sender: UISwitch) {
        if switchSelect.isOn {
            btnisDesigner.isSelected = true
            btnisDeveloper.isSelected = true
            btnisAdministrative.isSelected = true
            
        } else {
            btnisDesigner.isSelected = false
            btnisDeveloper.isSelected = false
            btnisAdministrative.isSelected = false
        }
    }
    
    @IBAction func btnOnTapDesigner(_ sender: UIButton) {
        if(btnisDesigner.isSelected) {
            btnisDesigner.isSelected = false
            switchSelect.isOn = false
        } else {
            btnisDesigner.isSelected = true
        }
        btnAllSelected()
    }
    
    @IBAction func btnOnTapDeveloper(_ sender: UIButton) {
        if(btnisDeveloper.isSelected) {
            btnisDeveloper.isSelected = false
            switchSelect.isOn = false
        } else {
            btnisDeveloper.isSelected = true
        }
        btnAllSelected()
    }
    
    @IBAction func btnOnTapAdministrative(_ sender: UIButton) {
        if(btnisAdministrative.isSelected){
            btnisAdministrative.isSelected = false
            switchSelect.isOn = false
        } else {
            btnisAdministrative.isSelected = true
        }
        btnAllSelected()
    }
    
    // MARK: btnSelected Method
    private func btnAllSelected() {
        if btnisDesigner.isSelected && btnisDeveloper.isSelected && btnisAdministrative.isSelected {
            switchSelect.isOn = true
        }
    }
    
}
