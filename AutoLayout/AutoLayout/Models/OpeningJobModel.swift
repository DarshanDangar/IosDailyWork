//
//  OpeningJobModel.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 08/06/23.
//

import Foundation

struct OpeningJobModel {
    
    let imgCompanyLogo: String
    let companyName: String
    let salary: String?
    let jobLocation: String?
    let jobPosition: String?
    let numberOfVecancy: Int?
    
    static var arrOpeningJob: [OpeningJobModel] = [
        OpeningJobModel(imgCompanyLogo: "simform", companyName: "Simform", salary: "50,000", jobLocation: "Ahedabad", jobPosition: "Software Engineer", numberOfVecancy: 5),
        OpeningJobModel(imgCompanyLogo: "google", companyName: "Google", salary: "50,000$", jobLocation: "Us", jobPosition: "Cloud Engineer", numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "facebook", companyName: "Facebook", salary: nil, jobLocation: nil, jobPosition: nil, numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "instagram", companyName: "Instagram", salary: nil, jobLocation: nil, jobPosition: nil, numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "videoPlayer", companyName: "Video Player", salary: "10,000", jobLocation: "Rajkot", jobPosition: "Ux-Designer", numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "Shell", companyName: "Shell", salary: nil, jobLocation: nil, jobPosition: nil, numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "burgerking", companyName: "Burger King", salary: "25,000", jobLocation: "Ahmedabad", jobPosition: "Master Cook", numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "beats", companyName: "Beats", salary: "50,000$", jobLocation: "Canada", jobPosition: "DBA", numberOfVecancy: nil),
        OpeningJobModel(imgCompanyLogo: "Spotify", companyName: "Spotify", salary: "65,000", jobLocation: "Florida", jobPosition: "Designer", numberOfVecancy: 6),
        OpeningJobModel(imgCompanyLogo: "apple", companyName: "Apple", salary: "90,000$", jobLocation: "Us", jobPosition: "Data Engineer", numberOfVecancy: 10),
        OpeningJobModel(imgCompanyLogo: "twiter", companyName: "Twiter", salary: "20,000", jobLocation: "Banglore", jobPosition: "Manager", numberOfVecancy: nil)
    ]
    
}
