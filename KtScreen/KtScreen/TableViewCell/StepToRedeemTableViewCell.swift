//
//  StepToRedeemTableViewCell.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class StepToRedeemTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgStepNo: UIImageView!
    @IBOutlet weak var lblStepDescription: UILabel!
    @IBOutlet weak var imgDiscription: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // MARK: config Cell
    func configCell(data: RedeemStepCountModel) {
        imgStepNo.image = UIImage(named: data.imgStepNo)
        lblStepDescription.text = data.stepDescription
        imgDiscription.image = UIImage(named: data.imgDescription)
    }
    
}
