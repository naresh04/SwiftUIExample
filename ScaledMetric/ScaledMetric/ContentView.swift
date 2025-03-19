//
//  ContentView.swift
//  ScaledMetric
//
//  Created by naresh chouhan on 3/19/25.
/*
 @ScaledMetric is a property wrapper in SwiftUI that automatically scales a numeric value based on the user’s Dynamic Type settings (Text Size settings in iOS/macOS).
 
 
 🔹 Why Use @ScaledMetric?

 ✅ Adapts to different accessibility text sizes
 ✅ Ensures UI elements scale consistently
 ✅ Improves readability for users with larger text settings
 ✅ Works well with frame sizes, padding, and custom fonts
 
 */

import SwiftUI

struct ContentView: View {
    @ScaledMetric var fontSize: CGFloat = 20
    @ScaledMetric var boxSize: CGFloat = 50
    @ScaledMetric(relativeTo: .largeTitle) var customSize: CGFloat = 40 // 👈 Scales based on large title size

    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.system(size: fontSize)) // 👈 Uses the scaled value
                .padding(fontSize) // 👈 Padding also scales
                        .border(Color.blue, width: 2)
            RoundedRectangle(cornerRadius: 10)
                       .frame(width: boxSize, height: boxSize) // 👈 Scales with user settings
                       .foregroundColor(.green)
            
            Text("Scaling Example")
                        .font(.system(size: customSize))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
