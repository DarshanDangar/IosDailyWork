//
//  FacebookDeatilsCategoriesCollectionViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import UIKit

class FacebookDeatilsCategoriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var lblFacebookCategorisDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: config Cell
    func configCell(data: CategoriesName) {
        lblFacebookCategorisDetails.text = data.categoriesName
    }
    
}
