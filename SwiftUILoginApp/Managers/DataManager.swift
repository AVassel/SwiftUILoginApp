//
//  DataManager.swift
//  SwiftUILoginApp
//
//  Created by Anton Vassel on 28.02.2023.
//

import SwiftUI

class DataManager {
    static let shader = DataManager()
    
    @AppStorage ("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func load() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }
}
