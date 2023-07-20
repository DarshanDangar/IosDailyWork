//
//  ExpandTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 02/06/23.
//

import UIKit

class ExpandTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDiscription: UILabel!
    
    // MARK: Variables
    var isTaped: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: config Cell
    func configcell(data: Article?) {
        lblTitle.text = data?.title
        lblAuthor.text = data?.author
        lblDiscription.text = data?.description
        if isTaped {
            lblDiscription.numberOfLines = 0
        } else {
            lblDiscription.numberOfLines = 1
        }
        
    }
    
}
