//
//  ContentView.swift
//  TaskModifier
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  data: String = ""
    @State private var refreshID = UUID()
    var body: some View {
        VStack {
            Text(data)
                .task {
                    data = await  fetchData()
                }
            
            Circle()
                .id(refreshID)
            Button("Refresh") {
                            refreshID = UUID() // Triggers a fresh instance
                        }
            
            
        }
        .padding()
    }
    func fetchData() async -> String {
            return "Fetched Data"
        }

}

#Preview {
    ContentView()
}
