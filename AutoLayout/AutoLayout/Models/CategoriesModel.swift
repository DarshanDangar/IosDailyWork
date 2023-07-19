//
//  CategoriesModel.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 03/06/23.
//

import Foundation
import UIKit

struct CategoriesModel {
    var categoriesForImage: String
    var lblCategoriesName: String
    
    static var dictOfCategories: [String : [CategoriesModel]] = [
        "Popular":
            [
                CategoriesModel(categoriesForImage: "uxDesigner", lblCategoriesName: "Ux Designer"),
                CategoriesModel(categoriesForImage: "webDeveloper", lblCategoriesName: "Web Developer"),
                CategoriesModel(categoriesForImage: "softwareEngineer", lblCategoriesName: "Software Engineer"),
                CategoriesModel(categoriesForImage: "productManager", lblCategoriesName: "Product Manager")
            ],
        "Trending" :
            [
                CategoriesModel(categoriesForImage: "uxDesigner", lblCategoriesName: "Ux Designer"),
                CategoriesModel(categoriesForImage: "webDeveloper", lblCategoriesName: "Web Developer"),
                CategoriesModel(categoriesForImage: "softwareEngineer", lblCategoriesName: "Software Engineer"),
                CategoriesModel(categoriesForImage: "productManager", lblCategoriesName: "Product Manager")
            ]
    ]
    
}
