//
//  RedeemStepModel.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import Foundation
import UIKit

struct RedeemStepCountModel {
    
    let imgStepNo: String
    let stepDescription: String
    let imgDescription: String
    
    static let arrRedemStep: [RedeemStepCountModel] = [
        RedeemStepCountModel(imgStepNo: "1", stepDescription: "Make sure your license plate matches the plate on your Parking Pass.", imgDescription: "step1"),
        RedeemStepCountModel(imgStepNo: "2", stepDescription: "You may park anywhere that doesn't say “Reserved”, have a person’s name, a business name, or any other special signage or messaging on the actual space. Failure to do so will result in a ticket, tow, or immobilisation.", imgDescription: "step2"),
        RedeemStepCountModel(imgStepNo: "3", stepDescription: "Simply leave when you're ready to go!", imgDescription: "step3")
    ]
    
}
