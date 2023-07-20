//
//  CompanyDeatilsModel.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 02/06/23.
//

import Foundation
class Article {
    
    var title: String
    var author: String
    var description: String
    var isTaped = false
    
    init(companyName: String, since: String, description: String) {
        self.title = companyName
        self.author = since
        self.description = description
    }
    
    static var deatilsOfCompany = [
        Article(companyName: "Simform", since: "Since: 2010", description: "Simform is a digital product engineering and IT talent solutions company with a mission to solve complex software engineering problems. In a software-defined world, the Simform Blog is your place to navigate through the renaissance in technology. Our publication aims to provide you the full scoop on the groundbreaking research, thought-leadership, and perspective on tech innovation in the world of software development, with a deep context to help tech leaders make intelligent decisions."),
        Article(companyName: "Google", since: "Since: 1990", description: "Google is an internet search engine. It uses a proprietary algorithm that's designed to retrieve and order search results to provide the most relevant and dependable sources of data possible. Advertisements."),
        Article(companyName: "FaceBook", since: "Since: 1991", description: "Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they don't know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like."),
        Article(companyName: "Flipcart", since: "Since: 2007", description: "Flipkart Private Limited is an Indian e-commerce company established in 2007. It started with a primary focus on online book sales and soon, expanded to lifestyle products, electronics, home essentials and groceries. Today, Flipkart is the biggest online Indian marketplace competing with the world leader Amazon."),
        Article(companyName: "Amazon", since: "Since: 1980", description: "Amazon.com Inc (Amazon) is an online retailer and web service provider. The company provides products such as apparel, auto and industrial items, beauty and health products, electronics, grocery, games, jewelry, kids and baby products, music, sports goods, toys, and tools."),
        Article(companyName: "IBM", since: "Since: 1911", description: "IBM (International Business Machines Corporation) is a multinational technology company headquartered in Armonk, N.Y. It was founded in 1911 as the Computing-Tabulating-Recording Company (CTR) and was later renamed to IBM in 1924. IBM is one of the world's largest IT companies, with operations in over 170 countries."),
        Article(companyName: "Simform", since: "Since: 2010", description: "Simform is a digital product engineering and IT talent solutions company with a mission to solve complex software engineering problems. In a software-defined world, the Simform Blog is your place to navigate through the renaissance in technology. Our publication aims to provide you the full scoop on the groundbreaking research, thought-leadership, and perspective on tech innovation in the world of software development, with a deep context to help tech leaders make intelligent decisions."),
        Article(companyName: "Google", since: "Since: 1990", description: "Google is an internet search engine. It uses a proprietary algorithm that's designed to retrieve and order search results to provide the most relevant and dependable sources of data possible. Advertisements."),
        Article(companyName: "FaceBook", since: "Since: 1991", description: "Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they don't know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like."),
        Article(companyName: "Flipcart", since: "Since: 2007", description: "Flipkart Private Limited is an Indian e-commerce company established in 2007. It started with a primary focus on online book sales and soon, expanded to lifestyle products, electronics, home essentials and groceries. Today, Flipkart is the biggest online Indian marketplace competing with the world leader Amazon."),
        Article(companyName: "Amazon", since: "Since: 1980", description: "Amazon.com Inc (Amazon) is an online retailer and web service provider. The company provides products such as apparel, auto and industrial items, beauty and health products, electronics, grocery, games, jewelry, kids and baby products, music, sports goods, toys, and tools."),
        Article(companyName: "IBM", since: "Since: 1911", description: "IBM (International Business Machines Corporation) is a multinational technology company headquartered in Armonk, N.Y. It was founded in 1911 as the Computing-Tabulating-Recording Company (CTR) and was later renamed to IBM in 1924. IBM is one of the world's largest IT companies, with operations in over 170 countries."),
        Article(companyName: "Simform", since: "Since: 2010", description: "Simform is a digital product engineering and IT talent solutions company with a mission to solve complex software engineering problems. In a software-defined world, the Simform Blog is your place to navigate through the renaissance in technology. Our publication aims to provide you the full scoop on the groundbreaking research, thought-leadership, and perspective on tech innovation in the world of software development, with a deep context to help tech leaders make intelligent decisions."),
        Article(companyName: "Google", since: "Since: 1990", description: "Google is an internet search engine. It uses a proprietary algorithm that's designed to retrieve and order search results to provide the most relevant and dependable sources of data possible. Advertisements."),
        Article(companyName: "FaceBook", since: "Since: 1991", description: "Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they don't know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like."),
        Article(companyName: "Flipcart", since: "Since: 2007", description: "Flipkart Private Limited is an Indian e-commerce company established in 2007. It started with a primary focus on online book sales and soon, expanded to lifestyle products, electronics, home essentials and groceries. Today, Flipkart is the biggest online Indian marketplace competing with the world leader Amazon."),
        Article(companyName: "Amazon", since: "Since: 1980", description: "Amazon.com Inc (Amazon) is an online retailer and web service provider. The company provides products such as apparel, auto and industrial items, beauty and health products, electronics, grocery, games, jewelry, kids and baby products, music, sports goods, toys, and tools."),
        Article(companyName: "IBM", since: "Since: 1911", description: "IBM (International Business Machines Corporation) is a multinational technology company headquartered in Armonk, N.Y. It was founded in 1911 as the Computing-Tabulating-Recording Company (CTR) and was later renamed to IBM in 1924. IBM is one of the world's largest IT companies, with operations in over 170 countries.")
    ]
    
}
