//
//  AssignedParkingLotModel.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

struct AssignedParkingLotModel {
    
    let imgParkingLot: String
    let parkingId: String
    let parkingLotName: String
    let parkingLotAddress: String
    let oeratingHour: String
    let locationId: String
    let locationPhoneNo: String
    
    static let parkingLotList: [AssignedParkingLotModel] = [
        AssignedParkingLotModel(imgParkingLot: "imgparking1", parkingId: "24582", parkingLotName: "Alpha mall jdoojkdko ioshdi siohdojdhhisdhjaioshdijsui i", parkingLotAddress: "1280, St. NE, DC Road, 20001 fjkbijbafjpjoj io9huhfijha idhosjohbdsjj ioljiohi jiohjnfjo", oeratingHour: "6 AM to 11 PM", locationId: "A101", locationPhoneNo: "245-854-2145"),
        AssignedParkingLotModel(imgParkingLot: "imgparking2", parkingId: "24865", parkingLotName: "55 W Rockefeller Center", parkingLotAddress: "1280, St. NE, DC Road, 20001", oeratingHour: "6 AM to 11 PM", locationId: "A102", locationPhoneNo: "245-854-2145"),
        AssignedParkingLotModel(imgParkingLot: "imgparking3", parkingId: "24865", parkingLotName: "Emerald Green Center", parkingLotAddress: "1280, St. NE, DC Road, 20001", oeratingHour: "6 AM to 11 PM", locationId: "A103", locationPhoneNo: "245-854-2145")
    ]
    
}
