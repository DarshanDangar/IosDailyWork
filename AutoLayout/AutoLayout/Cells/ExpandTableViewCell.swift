//
//  ExpandTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 02/06/23.
//

import UIKit

class ExpandTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblCompanyname: UILabel!
    @IBOutlet weak var lblSince: UILabel!
    @IBOutlet weak var lblDiscription: UILabel!
    
    // MARK: Variables
    var isTaped: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    // MARK: config Cell
    func configcell(data: Articl?) {
        lblCompanyname.text = data
        lblSince.text = data.since
        lblDiscription.text = data.description
        isTaped = data.isTaped
        if isTaped {
            lblDiscription.numberOfLines = 0
        } else {
            lblDiscription.numberOfLines = 1
        }
    }
    
}
