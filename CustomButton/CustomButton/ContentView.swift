//
//  ContentView.swift
//  CustomButton
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CustomButton(title:"ClickME",backgroundColor: .red){
                print("Button tapped!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
