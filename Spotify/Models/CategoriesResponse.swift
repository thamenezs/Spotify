//
//  CategoriesResponse.swift
//  Spotify
//
//  Created by Thais Souza on 18/02/25.
//

import Foundation

struct CategoriesResponse: Codable {
    let categories: ItemsResponse
}

struct ItemsResponse: Codable {
    let items: [Category]
}

struct Category: Codable {
    let icons: [APIImage]
    let id: String
    let name: String
}
