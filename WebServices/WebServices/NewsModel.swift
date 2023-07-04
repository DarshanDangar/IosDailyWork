//
//  NewsModel.swift
//  WebServices
//
//  Created by Darshan Dangar on 01/07/23.
//

import Foundation

// MARK: - News
struct News: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

// MARK: - Article
struct Article: Codable {
    let source: Source?
    let author, title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

// MARK: - Source
struct Source: Codable {
    let id:String?
    let name: String?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable{

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
