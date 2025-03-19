//
//  ContentView.swift
//  ObservedObjectExample
//
//  Created by naresh chouhan on 3/18/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var counter = CounterModel()
    var body: some View {
        VStack {
            CounterView(counter: counter)
            }
                .padding()
            }
}

#Preview {
    ContentView()
}
