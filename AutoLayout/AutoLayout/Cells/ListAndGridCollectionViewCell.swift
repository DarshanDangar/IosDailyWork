//
//  ListAndGridCollectionViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 14/06/23.
//

import UIKit

class ListAndGridCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgCompanyLogo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell
    func configCell(data: OpeningJobModel) {
        lblCompanyName.text = data.companyName
        imgCompanyLogo.image = UIImage(named: data.imgCompanyLogo)
    }

}
