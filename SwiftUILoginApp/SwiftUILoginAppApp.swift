//
//  SwiftUILoginAppApp.swift
//  SwiftUILoginApp
//
//  Created by Anton Vassel on 11.01.2023.
//

import SwiftUI

@main
struct SwiftUILoginAppApp: App {
    private let user = DataManager.shader.load()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
