//
//  ContentView.swift
//  AppStorage
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Username") private var username:String  = "Naresh"
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("highScore") private var highScore = 0
    
    
    
    var body: some View {
        VStack {
            Text("Hello, \(username)!")
            Toggle("Dark Mode", isOn: $isDarkMode)
            Text("High Score: \(highScore)")

            TextField("Enter your name", text: $username) // 👈 Auto-saves changes
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Toggle("Dark Mode", isOn: $isDarkMode)
                        .padding()
            Button("Increase Score") {
                            highScore += 10 // 👈 Automatically saved
                        }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
