//
//  SectionHeaderCell.swift
//  KtScreen
//
//  Created by Darshan Dangar on 16/06/23.
//

import UIKit

class SectionHeaderCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var lblHeaderTitle: UILabel!
    @IBOutlet weak var topConstraintsofHeaderName: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell
    func configCell(data: String) {
        lblHeaderTitle.text = data
    }
    
}
