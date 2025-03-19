//
//  ContentView.swift
//  SceneStorage
//
//  Created by naresh chouhan on 3/19/25.

/*
 Scope:
 @SceneStorage :  Scene-specific (only for the current scene/window)
 @AppStorage: App-wide (persists across launches)
 
 Persistence
 @SceneStorage : Data is lost when the app is closed
 @AppStorage:Data is saved permanently in UserDefaults
 
 Use Cas
 @SceneStorage: Restoring UI state (e.g., text input, scroll position)
 @AppStorage: Storing settings, preferences, and persistent data
 
 */
//

import SwiftUI

struct ContentView: View {
    @SceneStorage("scrollPosition") private var scrollOffset: Double = 0.0
    
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                VStack {
                    ForEach(1...50, id: \.self) { index in
                            Text("Item \(index)")
                            .padding()
                            .id(index)
                    }
                }
                .onAppear {
                    proxy.scrollTo(scrollOffset, anchor: .top) // Restore scroll position
                                }
                    .onDisappear {
                        scrollOffset = 20 // Save scroll position
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
