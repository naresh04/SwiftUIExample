//
//  SecondView.swift
//  TaskModifier
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct myView: View {
    var body: some View {
        Text("Hello")
        Text("Gello")
    }
}
@ViewBuilder
func createView() -> some View {
    Text("Hello")
    Text("By")
}
#Preview {
    SecondView()
}
