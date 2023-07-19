//
//  CategoriesCollectionViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 03/06/23.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgCategories: UIImageView!
    @IBOutlet weak var lblCategoriesName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell for CategoriesModel
    func configCell(data: CategoriesModel) {
        imgCategories.image = UIImage(named: data.categoriesForImage)
        lblCategoriesName.text = data.lblCategoriesName
    }
    
    // MARK: config Cell for OpeningJobModel
    func configCell(data: OpeningJobModel) {
        lblCategoriesName.text = data.companyName
        imgCategories.image = UIImage(named: data.imgCompanyLogo)
    }
    
}
