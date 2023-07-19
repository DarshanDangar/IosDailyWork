//
//  JobViewModelTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 31/05/23.
//

import UIKit

class JobViewModelTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgCompanyLogo: UIImageView!
    @IBOutlet weak var btnSelector: UIButton!
    @IBOutlet weak var lblCompanyName: UILabel!
    
    // MARK: Variables
    weak var tblView: UITableView?
    weak var delegate: BtnActionDelegate?
    var closure: (()->()) = {}
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.btnSelector.addTarget(self, action: #selector(onaTapRadioButton(_:)), for: .touchUpInside)
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        btnSelector.isSelected = true
    }
    
    // MARK: Action Methods
    @IBAction func onaTapRadioButton(_ sender: UIButton) {
        closure()
    }
    
    // MARK: config Cell
    func configCell(data: JobModel) {
        imgCompanyLogo.image = UIImage(named: data.imageName ?? Constant.emptyString)
        lblCompanyName.text = data.companyName
        btnSelector.isSelected = data.isSelected
    }
    
}

// MARK: BtnAction Protocol
protocol BtnActionDelegate: AnyObject {
    func jobViewModelTableViewCell(_ jobViewModelTableViewCell: JobViewModelTableViewCell)
}


