//
//  ContentView.swift
//  BindingExample
//
//  Created by naresh chouhan on 3/18/25.
//
/*
 
 To allow both Parent and Child to modify the same state, use @Binding in the child view.
    1. ChildView gets a binding (@Binding) to count, instead of a copy.
 2. When the child modifies count, the change is reflected in ParentView automatically.
 3. @Binding creates a two-way connection between the parent and child.
 
 
 
 
 */
import SwiftUI

struct ContentView: View {
    @State private var count = 0  // Local state
    var body: some View {
        VStack {
            Text("Parent Count: \(count)")
                ChildView(count: $count)
            Button("Increment in Parent") {
                        count += 1
                }
        }
        .padding()
    }
}

struct ChildView: View {
    @Binding var count: Int  

    var body: some View {
        VStack {
            Text("Child Count: \(count)")
            Button("Increment in Child") {
                count += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
