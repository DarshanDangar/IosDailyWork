//
//  TblCellUserList.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import UIKit

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
    }
    
}
