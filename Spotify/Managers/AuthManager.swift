//
//  AuthManager.swift
//  Spotify
//
//  Created by Justyna Kowalkowska on 16/02/2021.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "e36b672bcb8e4d648357e1e3327cb5b6"
        static let clientSecret = "6e2d73fbf63f40b78c5daf583b848a60"
    }
    
    private init() { }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
