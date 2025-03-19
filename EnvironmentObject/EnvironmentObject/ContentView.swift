//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager
    var body: some View {
        if authManager.isLoggedIn {
                    HomeView()
            } else {
                    LoginView()
                }
    }
}

#Preview {
    ContentView()
}
