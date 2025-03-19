//
//  CounterView.swift
//  ObservedObjectExample
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct CounterView: View {
    @ObservedObject var counter: CounterModel  // Observes external Counter object
    var body: some View {
        VStack(spacing: 20) {
                    Text("Count: \(counter.count)")
                        .font(.largeTitle)
                    
                    Button("Increment") {
                        counter.count += 1  // Modify the observed object
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
            }
    }


#Preview {
    CounterView(counter: CounterModel())
}
