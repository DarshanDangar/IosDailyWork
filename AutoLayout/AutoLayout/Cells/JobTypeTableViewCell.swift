//
//  JobTypeTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import UIKit

class JobTypeTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgCompanyLogo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblPositionName: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    @IBOutlet weak var lblJobPlace: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: config Cell
    func configCell(data: JobModelforTableView) {
        imgCompanyLogo.image = UIImage(named: data.imgCompanyLogo)
        lblCompanyName.text = data.companyName
        lblSalary.text = data.salary
        lblJobPlace.text = data.jobPlace
        lblPositionName.text = data.jobPosition
    }
    
}
