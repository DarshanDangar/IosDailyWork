//
//  JobModelForTableView.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import Foundation
struct JobModelforTableView {
    var imgCompanyLogo: String
    var companyName: String
    var jobPosition: String
    var jobPlace: String
    var salary: String
    
    static var dictJobData: [String: [JobModelforTableView]] = [
        "Featured Job":
            [
                JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),
                JobModelforTableView(imgCompanyLogo: "beats", companyName: "Beats", jobPosition: "Product Manager", jobPlace: "Florida, Us", salary: "$84,000/y"),
                JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),
                JobModelforTableView(imgCompanyLogo: "burgerking", companyName: "Burger King", jobPosition: "Junior Executive", jobPlace: "Los Angels, Us", salary: "$96,000/y")
            ],
        "Popular Job":
            [
                JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),JobModelforTableView(imgCompanyLogo: "beats", companyName: "Beats", jobPosition: "Product Manager", jobPlace: "Florida, Us", salary: "$84,000/y"),JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),JobModelforTableView(imgCompanyLogo: "burgerking", companyName: "Burger King", jobPosition: "Junior Executive", jobPlace: "Los Angels, Us", salary: "$96,000/y"),JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),JobModelforTableView(imgCompanyLogo: "beats", companyName: "Beats", jobPosition: "Product Manager", jobPlace: "Florida, Us", salary: "$84,000/y"),JobModelforTableView(imgCompanyLogo: "Shell", companyName: "Shell Inc", jobPosition: "Junior Executive", jobPlace: "Texas, Us", salary: "$98,000/y"),JobModelforTableView(imgCompanyLogo: "burgerking", companyName: "Burger King", jobPosition: "Junior Executive", jobPlace: "Los Angels, Us", salary: "$96,000/y")
            ]
    ]
    
}
