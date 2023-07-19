//
//  JobTypeCollectionViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import UIKit

class JobTypeCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var btnBookMark: UIButton!
    @IBOutlet weak var lbJobPlace: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblOpeningJobName: UILabel!
    @IBOutlet weak var imgCompanyLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: config Cell for JobModelforTableView
    func configCell(data: JobModelforTableView) {
        lblCompanyName.text = data.companyName
        lblSalary.text = data.salary
        lblOpeningJobName.text = data.jobPosition
        lbJobPlace.text = data.jobPlace
        imgCompanyLogo.image = UIImage(named: data.imgCompanyLogo)
    }
    
    // MARK: config Cell for OpeningJobModel
    func configCell(data: OpeningJobModel) {
        lblCompanyName.text = data.companyName
        lblSalary.text = data.salary
        lblOpeningJobName.text = data.jobPosition
        lbJobPlace.text = data.jobLocation
        imgCompanyLogo.image = UIImage(named: data.imgCompanyLogo)
    }
    
}
