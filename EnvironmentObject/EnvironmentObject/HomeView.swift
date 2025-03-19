//
//  HomeView.swift
//  EnvironmentObject
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authManager: AuthManager
    var body: some View {
           VStack {
               Text("Hello, User! 🎉")
                   .font(.largeTitle)
                   .padding()

               Button(action: {
                   authManager.logOut() // ✅ Log out and return to LoginView
               }) {
                   Text("Log Out")
                       .padding()
                       .background(Color.red)
                       .foregroundColor(.white)
                       .cornerRadius(8)
               }
           }
       }
}

#Preview {
    HomeView()
}
