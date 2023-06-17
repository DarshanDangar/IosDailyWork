//
//  ContactsDetailsTableViewCell.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class ContactsDetailsTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgPerson: UIImageView!
    @IBOutlet weak var lblPersonName: UILabel!
    @IBOutlet weak var lblPhoneNo: UILabel!
    @IBOutlet weak var botomCon: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        imgPerson.layer.cornerRadius = imgPerson.frame.height / 2
    }
    
    // MARK: config Cell
    func configCell(data: ContectsModel) {
        imgPerson.image = UIImage(named: data.imgOfperson)
        lblPersonName.text = data.nameOfPerson
        lblPhoneNo.text = data.contactNo1
    }
    
}
