//
//  Sections.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import Foundation

enum Sections: String {
    case HeaderView = "HeaderView"
    case Attendant = "Attendant"
    case SuperVisiorDetails = "SuperVisior Details"
    case MaintenanceDetails = "Maintenance Details"
    case SteptoRedeem = "Step to Redeem"
    case TermsConditions = "Terms & Conditions"
    
    static var arrSections = [HeaderView, Attendant, SuperVisiorDetails, MaintenanceDetails, SteptoRedeem,TermsConditions]
}
