//
//  ExpandableCollectionViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 08/06/23.
//

import UIKit

class ExpandableCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgCompanyLogo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblJobPlace: UILabel!
    @IBOutlet weak var lblJobPosition: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    @IBOutlet weak var lblNumberOfVacancy: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell
    func configCell(data: OpeningJobModel) {
        imgCompanyLogo.image = UIImage(named: data.imgCompanyLogo)
        lblCompanyName.text = data.companyName
        if data.salary != nil {
            lblSalary.text = data.salary
        } else {
            lblSalary.isHidden = true
        }
        if data.jobPosition != nil {
            lblJobPosition.text = data.jobPosition
        } else {
            lblJobPosition.isHidden = true
        }
        if data.jobLocation != nil {
            lblJobPlace.text = data.jobLocation
        } else {
            lblJobPosition.isHidden = true
        }
        if data.numberOfVecancy != nil {
            lblNumberOfVacancy.text = "\(data.numberOfVecancy!)"
        } else {
            lblNumberOfVacancy.isHidden = true
        }
    }
    
}
