//
//  ContentView.swift
//  StateExample
//
//  Created by naresh chouhan on 3/18/25.
//
/*
 @State : Store local state of a view
 its for view's inteernal storage
 @State allows count to be stored separately from the View struct, making it mutable.
 When count changes, SwiftUI automatically re-renders the body to reflect the new value.
 This is how SwiftUI handles state-driven UI updates.
 
 
 
 
 */
import SwiftUI

struct ContentView: View {
    @State private var count  = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Incremmt"){
                self.count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
