//
//  CustomButton.swift
//  CustomButton
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color = .blue
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 10
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(foregroundColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .shadow(radius: 5)
        }
        .padding(.horizontal)
    }
}
