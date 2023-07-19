//
//  JobModel.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 31/05/23.
//

import Foundation
class JobModel {
    
    var imageName: String?
    var companyName: String?
    var isSelected = false
    
    init(_ imageName: String? = nil, _ companyName: String? = nil) {
        self.imageName = imageName
        self.companyName = companyName
    }
    
    static var arrayJobModel: [JobModel] = [JobModel("Image 1", "Google"),
                                            JobModel("Image 2", "Facebook"),
                                            JobModel("Image 3", "Instagram"),
                                            JobModel("Image 4", "VideoPlayer"),
                                            JobModel("Image 5", "Twiter"),
                                            JobModel("Image 6", "Simform"),
                                            JobModel("Image 1", "Google"),
                                            JobModel("Image 2", "Facebook"),
                                            JobModel("Image 3", "Instagram"),
                                            JobModel("Image 4", "VideoPlayer"),
                                            JobModel("Image 5", "Twiter"),
                                            JobModel("Image 6", "Simform"),
                                            JobModel("Image 1", "Google"),
                                            JobModel("Image 2", "Facebook"),
                                            JobModel("Image 3", "Instagram"),
                                            JobModel("Image 4", "VideoPlayer"),
                                            JobModel("Image 5", "Twiter"),
                                            JobModel("Image 6", "Simform")]
    
}
