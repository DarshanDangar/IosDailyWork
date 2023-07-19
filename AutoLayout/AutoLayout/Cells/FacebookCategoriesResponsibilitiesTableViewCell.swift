//
//  FacebookCategoriesResponsibilitiesTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import UIKit

class FacebookCategoriesResponsibilitiesTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var lblDeatils: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell
    func configCell(data: FacebookJobCategoriesDetails) {
        lblDeatils.text = data.discription
    }
    
}
