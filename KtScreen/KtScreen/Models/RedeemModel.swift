//
//  RedeemStepModel.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

struct RedeemDetails {
    
    let imgStepNo: String
    let stepDescription: String
    let imgDescription: String
    
    static let arrRedemStep: [RedeemDetails] = [
        RedeemDetails(imgStepNo: "1", stepDescription: "Make sure your license plate matches the plate on your Parking Pass.", imgDescription: "step1"),
        RedeemDetails(imgStepNo: "2", stepDescription: "You may park anywhere that doesn't say “Reserved”, have a person’s name, a business name, or any other special signage or messaging on the actual space. Failure to do so will result in a ticket, tow, or immobilisation.", imgDescription: "step2"),
        RedeemDetails(imgStepNo: "3", stepDescription: "Simply leave when you're ready to go!", imgDescription: "step3")
    ]
    
}
