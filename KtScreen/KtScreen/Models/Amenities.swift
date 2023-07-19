//
//  Amenities.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

struct AmenitiesModel {
    
    let imgAmenitiesType: String
    let lblNameofAmenities: String
    
    static let arrAmenitiesDetails: [AmenitiesModel] = [
        AmenitiesModel(imgAmenitiesType: "Valet", lblNameofAmenities: "Valet"),
        AmenitiesModel(imgAmenitiesType: "Electric Charging", lblNameofAmenities: "Electric Charging"),
        AmenitiesModel(imgAmenitiesType: "Overnight Parking", lblNameofAmenities: "Overnight Parking"),
        AmenitiesModel(imgAmenitiesType: "Pay-by-Plate", lblNameofAmenities: "Pay-by-Plate"),
        AmenitiesModel(imgAmenitiesType: "Outdoor Lot", lblNameofAmenities: "Outdoor Lot"),
        AmenitiesModel(imgAmenitiesType: "Terms of Service", lblNameofAmenities: "Terms of Service"),
        AmenitiesModel(imgAmenitiesType: "In and Out", lblNameofAmenities: "In and Out"),
    ]
    
}
