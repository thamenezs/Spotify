//
//  AudioTrack.swift
//  Spotify
//
//  Created by Thais Souza on 03/02/25.
//

import Foundation

struct AudioTrack: Codable {
    let artists: [Artist]
    let available_markets: [String]
    let duration_ms: Int
    let disc_number: Int
    let explicit: Bool
    let external_urls: [String: String]
    let id: String
    let name: String
    let type: String
    
}
