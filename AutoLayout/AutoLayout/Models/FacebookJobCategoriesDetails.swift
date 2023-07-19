//
//  FacebookJobCategoriesDetails.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import Foundation

struct FacebookJobCategoriesDetails {
    let discription: String
    
    static var arrDiscription: [FacebookJobCategoriesDetails] = [
        FacebookJobCategoriesDetails(discription: "Full stack web/mobile application development with a variety of coding languages"),
        FacebookJobCategoriesDetails(discription: "Create consumer products and features using internal programming language Hack"),
        FacebookJobCategoriesDetails(discription: "Implement web or mobile interfaces using XHTML, CSS, and JavaScript"),
        FacebookJobCategoriesDetails(discription: "By drawing on a fundamental description of cause and effect found in Einstein’s theory of special relativity, researchers from Imperial College London have come up with a way to help AIs make better guesses too.")
    ]
    
}

struct CategoriesName {
    
    let categoriesName: String
    
    static var arrCategoriesName: [CategoriesName] = [
        CategoriesName(categoriesName: "Description"),
        CategoriesName(categoriesName: "Requirement"),
        CategoriesName(categoriesName: "About"),
        CategoriesName(categoriesName: "Reviews")
    ]
}
