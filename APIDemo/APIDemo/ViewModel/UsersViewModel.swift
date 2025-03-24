//
//  UsersViewModel.swift
//  APIDemo
//
//  Created by naresh chouhan on 3/19/25.
//

import Foundation
@MainActor
class UsersViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading: Bool = false
    
    func fetchUsers() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        isLoading = true
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let decodedUsers = try JSONDecoder().decode([User].self, from: data)
            users = decodedUsers
            
        }catch {
            print("Error fetching users:", error)
        }
        isLoading = false
        
    }
}
