//
//  Settings.swift
//  Spotify
//
//  Created by Thais Souza on 06/02/25.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
