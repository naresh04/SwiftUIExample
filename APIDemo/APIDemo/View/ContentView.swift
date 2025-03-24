//
//  ContentView.swift
//  APIDemo
//
//  Created by naresh chouhan on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UsersViewModel()
    var body: some View {
        VStack {
            NavigationView{
                
                VStack {
                    if viewModel.isLoading{
                        ProgressView("Loading...")
                    }else {
                        List {
                            Section(header: Text("Users with ID ≤ 5")){
                                ForEach(viewModel.users.filter{$0.id<5}){ user in
                                    NavigationLink(destination:UserDetailView(user: user)){
                                        UserRow(user: user)
                                    }
                                   
                                }
                                
                            }
                            Section(header: Text("Users with ID > 5")) {
                                ForEach(viewModel.users.filter { $0.id > 5 }) { user in
                                    NavigationLink(destination:UserDetailView(user: user)){
                                        UserRow(user: user)
                                    }
                                    
                                }
                            }
                        } .listStyle(GroupedListStyle())
                    }
                }
                
                
            }.navigationTitle("Users")
                .task {
                    await viewModel.fetchUsers()  // Fetch users using async/await
                }
        }
        .padding()
    }
}

struct UserRow:View {
    let user: User
    var body: some View {
        VStack(alignment: .leading) {
                   Text(user.name)
                       .font(.headline)
                   Text(user.email)
                       .font(.subheadline)
                       .foregroundColor(.gray)
               }
               .padding(.vertical, 5)
    }
}

#Preview {
    ContentView()
}
