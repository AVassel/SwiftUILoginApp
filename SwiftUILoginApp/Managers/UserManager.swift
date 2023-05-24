//
//  UserManager.swift
//  SwiftUILoginApp
//
//  Created by Anton Vassel on 11.01.2023.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var isNameValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}
