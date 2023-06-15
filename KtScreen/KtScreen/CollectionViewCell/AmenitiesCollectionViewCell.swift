//
//  AmenitiesCollectionViewCell.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AmenitiesCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    
    @IBOutlet weak var imgAmenities: UIImageView!
    @IBOutlet weak var lblAmenitiesName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: config Cell
    func configCell(data: AmenitiesModel) {
        imgAmenities.image = UIImage(named: data.imgAmenitiesType)
        lblAmenitiesName.text = data.lblNameofAmenities
    }

}
