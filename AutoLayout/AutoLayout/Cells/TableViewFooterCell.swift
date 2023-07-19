//
//  TableViewHeaderFooterCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 06/06/23.
//

import UIKit

class TableViewFooterCell: UIView {
    
    // MARK: Outlets
    @IBOutlet weak var pageControllerForCollectionViewCell: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pageControllerForCollectionViewCell.tintColor = .red
    }
    
}
