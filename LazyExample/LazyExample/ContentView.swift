//
//  ContentView.swift
//  LazyExample
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    let rows = [
            GridItem(.fixed(100)),  // Each row has a fixed height
            GridItem(.fixed(100))
        ]
        
    var body: some View {
        ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(1...20, id: \.self) { index in
                            Text("Item \(index)")
                                .frame(width: 100, height: 100)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
            LazyHGrid(rows: rows, spacing: 20) {
                            ForEach(1...10, id: \.self) { index in
                                Text("Item \(index)")
                                    .frame(width: 100, height: 100)
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
            }.padding()
                }
            }
}

#Preview {
    ContentView()
}
