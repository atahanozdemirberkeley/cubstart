//
//  Article.swift
//  newsfeedSkeleton
//

import Foundation

// MARK: - Result
struct ArticleResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id: UUID = UUID()
    var author: String?
    var url: String?
    var source: String?
    var title: String?
    var welcomeDescription: String?
    var image: String?
    var date: Date?
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title, image, date
        case welcomeDescription = "description"
    }
}
