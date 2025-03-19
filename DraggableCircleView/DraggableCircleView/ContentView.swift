//
//  ContentView.swift
//  DraggableCircleView
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var finalOffset: CGSize = .zero  // Stores the final position
        @GestureState private var dragOffset: CGSize = .zero  // Tracks gesture offset
    var body: some View {
        Circle()
                   .fill(Color.blue)
                   .frame(width: 100, height: 100)
                   .offset(x: finalOffset.width + dragOffset.width,
                           y: finalOffset.height + dragOffset.height) // Combine both offsets
                   .gesture(
                       DragGesture()
                           .updating($dragOffset) { value, state, _ in
                               state = value.translation  // Update transient state
                           }
                           .onEnded { value in
                               finalOffset.width += value.translation.width
                               finalOffset.height += value.translation.height
                           }
                   )
                   .animation(.spring(), value: finalOffset)  // Smooth animation back to position
           }
    }


#Preview {
    ContentView()
}
