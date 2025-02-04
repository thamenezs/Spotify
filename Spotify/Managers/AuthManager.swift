//
//  AuthManager.swift
//  Spotify
//
//  Created by Thais Souza on 03/02/25.
//

import Foundation

final class AuthManager {
    
    struct Constants {
        static let clientID = "2be2f6965dfa428faf64b2db3800ca35"
        static let clientSecret = "f3502ea5e275491d8fc67572d303f8c3"
    }
    
    static let shared = AuthManager()
    
    private init () {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationData: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
