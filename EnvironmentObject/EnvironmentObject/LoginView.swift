//
//  LoginView.swift
//  EnvironmentObject
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authManager: AuthManager // 👈 Access shared state

    var body: some View {
        VStack {
                    Text("Welcome! Please log in.")
                        .font(.headline)
                        .padding()

                    Button(action: {
                        authManager.logIn() // ✅ Change authentication state
                    }) {
                        Text("Log In")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
    }


#Preview {
    LoginView()
}
