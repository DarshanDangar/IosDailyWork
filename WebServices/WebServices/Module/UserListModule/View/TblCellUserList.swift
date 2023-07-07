//
//  TblCellUserList.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import UIKit
import Kingfisher

class TblCellUserList: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgUser.layer.cornerRadius = imgUser.frame.height / 2
    }
    
    // MARK: config Cell
    func configCell(data: Datum) {
        imgUser.kf.setImage(with: URL(string: data.avatar))
        lblId.text = String(data.id)
        lblFirstName.text = data.firstName
        lblLastName.text = data.lastName
        lblEmail.text = data.email
    }
    
}
