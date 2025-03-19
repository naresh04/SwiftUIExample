//
//  ContentView.swift
//  Environment
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorS
    var body: some View {
        VStack {
            Text("Current Mode: \(colorS == .dark ? "Dark" : "Light")")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
