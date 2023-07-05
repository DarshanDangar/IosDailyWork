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
    func configcell(data: Article?) {
        lblCompanyname.text = data?.title
        lblSince.text = data?.author
        lblDiscription.text = data?.description
        //        isTaped = ((data?.isTaped) != nil)
        //        if isTaped {
        //            lblDiscription.numberOfLines = 0
        //        } else {
        //            lblDiscription.numberOfLines = 1
        //        }
    }
    
}
