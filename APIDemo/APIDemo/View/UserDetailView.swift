//
//  UserDetailView.swift
//  APIDemo
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    var body: some View {
        VStack(spacing: 20) {
                   Text(user.name)
                       .font(.largeTitle)
                       .bold()

                   Text(user.email)
                       .font(.title2)
                       .foregroundColor(.gray)

                   Spacer()
               }
               .padding()
               .navigationTitle("User Details")
    }
}

#Preview {
    UserDetailView(user: User(id: 1, name: "", email: ""))
}
