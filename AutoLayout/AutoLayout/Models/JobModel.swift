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
    
    static var arrayJobModel: [JobModel] = [JobModel("Google", "Google"),
                                            JobModel("Facebook", "Facebook"),
                                            JobModel("instagram", "Instagram"),
                                            JobModel("videoplayer", "VideoPlayer"),
                                            JobModel("twiter", "Twiter"),
                                            JobModel("simform", "Simform"),
                                            JobModel("Google", "Google"),
                                            JobModel("Facebook", "Facebook"),
                                            JobModel("instagram", "Instagram"),
                                            JobModel("videoplayer", "VideoPlayer"),
                                            JobModel("twiter", "Twiter"),
                                            JobModel("simform", "Simform"),
                                            JobModel("Google", "Google"),
                                            JobModel("Facebook", "Facebook"),
                                            JobModel("instagram", "Instagram"),
                                            JobModel("videoplayer", "VideoPlayer"),
                                            JobModel("twiter", "Twiter"),
                                            JobModel("simform", "Simform")]
    
}
