//
//  CollectionReusableViewforHeader.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import UIKit

class CollectionReusableViewforHeader: UICollectionReusableView {
    
    // MARK: Outlets
    @IBOutlet weak var btnSeeAll: UIButton!
    @IBOutlet weak var lblCategoryType: UILabel!
    
    // MARK: Variables
    var isTaped = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: IbActions
    @IBAction func btnListOrGrid(_ sender: UIButton) {
        isTaped.toggle()
        if isTaped {
            btnSeeAll.setTitle(Constant.Title.list, for: .normal)
        } else {
            btnSeeAll.setTitle(Constant.Title.grid, for: .normal)
        }
    }
    
}
