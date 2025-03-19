//
//  ContentView.swift
//  FocusedBinding
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    enum Field {
            case username
            case password
        }
        
        @State private var username: String = ""
        @State private var password: String = ""
        
        @FocusState private var focusedField: Field?
        
    @FocusedBinding(\.focusedField) private var focusedUsername: String?
        @FocusedBinding(\.focusedField) private var focusedPassword: String?
        
        var body: some View {
            VStack {
                TextField("Username", text: $username)
                    .focused($focusedField, equals: .username)
                    .bind($focusedUsername, to: $username)

                SecureField("Password", text: $password)
                    .focused($focusedField, equals: .password)
                    .bind($focusedPassword, to: $password)

                Button("Login") {
                    focusedField = nil // Dismiss keyboard
                }
            }
            .padding()
        }
}


#Preview {
    ContentView()
}
