//
//  Artist.swift
//  Spotify
//
//  Created by Thais Souza on 03/02/25.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
