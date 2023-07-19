//
//  BtnViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 23/05/23.
//

import UIKit

class BtnViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var btnRed: UIButton!
    @IBOutlet weak var btnDisabled: UIButton!
    @IBOutlet weak var btnSelected: UIButton!
    @IBOutlet weak var btnHighlighted: UIButton!
    
    // MARK: Variables
    private var taped = true
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
    }
    
    // MARK: setUp Button
    private func setUpButton() {
        btnDisabled.setTitle(Constant.Title.disabled, for: .disabled)
        btnSelected.setTitle(Constant.Title.selected, for: .selected)
        btnSelected.isSelected = true
        btnHighlighted.setTitle(Constant.Title.highlighted, for: .highlighted)
        btnHighlighted.isHighlighted = true
        btnDisabled.isEnabled = false
        btnRed.isSelected = true
        btnBlue.isSelected = true
    }
    
    // MARK: IbActions
    @IBAction func onTapBlueButton(_ sender: Any) {
        btnBlue.isSelected.toggle()
            btnBlue.backgroundColor = btnBlue.isSelected ? .yellow : .blue
    }
    
    @IBAction func btnRed(_ sender: Any) {
        btnRed.isSelected.toggle()
        btnRed.backgroundColor = btnRed.isSelected ? .yellow : .red
    }
    
    @IBAction func onTapChanegeColorButton(_ sender: UIButton) {
        taped.toggle()
        view.backgroundColor = taped ? .white : .yellow
    }
    
}
