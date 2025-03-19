//
//  EnvironmentObjectApp.swift
//  EnvironmentObject
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

@main
struct EnvironmentObjectApp: App {
    @StateObject private var authManager  = AuthManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
    }
}
