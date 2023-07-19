//
//  DetailsExpandRowTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 02/06/23.
//

import UIKit

class DetailsExpandRowTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCompanyname: UILabel!
    @IBOutlet weak var lblSince: UILabel!
    @IBOutlet weak var lblDiscription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configcell(data: CompanyDeatilsModel) {
        lblCompanyname.text = data.companyName
        lblSince.text = data.since
        lblDiscription.text = data.description
    }
    
}
