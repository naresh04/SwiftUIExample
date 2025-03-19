//
//  ContentView.swift
//  NamespaceExample
//
//  Created by naresh chouhan on 3/19/25.
//
/*
 @Namespace is a SwiftUI property wrapper that helps create matched geometry effects, enabling smooth animations between views. It is primarily used with the matchedGeometryEffect modifier to animate transitions of elements seamlessly.
 
 Why Use @Namespace?

 ✅ Smooth animations between views
 ✅ Create shared element transitions
 ✅ Match the position, size, and shape of elements across different views
 ✅ Works with matchedGeometryEffect for advanced animations
 
 
 🛠 How It Works
 @Namespace creates a shared animation space (animationNamespace).
 matchedGeometryEffect(id: "shape", in: animationNamespace) connects the small and large rectangle.
 When isExpanded changes, SwiftUI animates the transition smoothly.
 */

import SwiftUI

struct ContentView: View {
    
    @Namespace private var animationNamespace
    @State private var selectedItem: String?

        let items = ["Apple", "Banana", "Cherry", "Grapes"]

        var body: some View {
            VStack {
                if let selectedItem = selectedItem {
                    VStack {
                        Text(selectedItem)
                            .font(.largeTitle)
                            .matchedGeometryEffect(id: selectedItem, in: animationNamespace)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)

                        Button("Close") {
                            withAnimation {
                                self.selectedItem = nil
                            }
                        }
                        .padding()
                    }
                } else {
                    List(items, id: \.self) { item in
                        Text(item)
                            .matchedGeometryEffect(id: item, in: animationNamespace)
                            .onTapGesture {
                                withAnimation {
                                    selectedItem = item
                                }
                            }
                    }
                }
            }
        }
    
    
    
    
//    @Namespace private var animationNamespace
//    @State private var isExpanded = false
//    
//    var body: some View {
//        VStack {
//            if isExpanded {
//                RoundedRectangle(cornerRadius: 25)
//                                    .fill(Color.blue)
//                                    .matchedGeometryEffect(id: "shape", in: animationNamespace)
//                                    .frame(width: 300, height: 400)
//                                    .onTapGesture {
//                                        withAnimation {
//                                            isExpanded.toggle()
//                                        }
//                                    }
//                
//            }else {
//                RoundedRectangle(cornerRadius: 25)
//                                    .fill(Color.blue)
//                                    .matchedGeometryEffect(id: "shape", in: animationNamespace)
//                                    .frame(width: 100, height: 100)
//                                    .onTapGesture {
//                                        withAnimation {
//                                            isExpanded.toggle()
//                                        }
//                                    }
//            }
//        }
//        .padding()
//    }
}

#Preview {
    ContentView()
}
