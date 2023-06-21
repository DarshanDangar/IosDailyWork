//
//  AssignedParkingLotTableViewCell.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AssignedParkingLotTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgParkingLot: UIImageView!
    @IBOutlet weak var lblParkingId: UILabel!
    @IBOutlet weak var lblNameOfParkingLot: UILabel!
    @IBOutlet weak var lblAddressOfParkingLot: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgParkingLot.layer.cornerRadius = 6
    }
    
    // MARK: config Cell
    func configCell(data: AssignedParkingLotModel) {
        imgParkingLot.image = UIImage(named: data.imgParkingLot)
        lblParkingId.text = data.parkingId
        lblNameOfParkingLot.text = data.parkingLotName
        lblAddressOfParkingLot.text = data.parkingLotAddress
    }
    
}
