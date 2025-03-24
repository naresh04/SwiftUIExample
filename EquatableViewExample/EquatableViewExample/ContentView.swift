//
//  ContentView.swift
//  EquatableViewExample
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var items = [Item(name: "Item 1"), Item(name: "Item 2")]

    var body: some View {
        VStack {
            List(items) { item in
                Text(item.name)
                EquatableView(content: Text(item.name))
                    .onChange(of: item){ _ in
                        print("Item changed: \(item.name)")
                        
                    }
                
            }
            
        }
        .padding()
    }
}

struct Item: Identifiable {
    var id = UUID()
    var name: String
}
#Preview {
    ContentView()
}
