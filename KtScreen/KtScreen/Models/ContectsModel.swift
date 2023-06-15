//
//  ContectsModel.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import Foundation

struct ContectsModel {
    let imgOfperson: String
    let nameOfPerson: String
    let contactNo1: String
    let contactNo2: String?
    
    static var arrContactDetails: [ContectsModel] = [
        ContectsModel(imgOfperson: "Oval1", nameOfPerson: "James Franco", contactNo1: "215-854-8542", contactNo2: nil),
        ContectsModel(imgOfperson: "Oval2", nameOfPerson: "David Elsonbaty", contactNo1: "245-965-7125", contactNo2: nil),
        ContectsModel(imgOfperson: "Oval3", nameOfPerson: "Ramon Bateman", contactNo1: "263-845-7458", contactNo2: nil),
        ContectsModel(imgOfperson: "Oval4", nameOfPerson: "Spencer Horton", contactNo1: "263-845-7458", contactNo2: nil)
    ]
    
    static let superViserDetails = [
        ContectsModel(imgOfperson: "Oval5", nameOfPerson: "Joshua Wilson", contactNo1: "215-854-8542", contactNo2: "254-845-9542")
    ]
    
    static let MaintenanceDetails = [
        ContectsModel(imgOfperson: "Oval6", nameOfPerson: "Irvine Acosta", contactNo1: "215-854-8542", contactNo2: nil)
    ]
    
}
