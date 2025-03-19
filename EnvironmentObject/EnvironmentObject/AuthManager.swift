//
//  AuthManager.swift
//  EnvironmentObject
//
//  Created by naresh chouhan on 3/19/25.
//

import Foundation

class AuthManager: ObservableObject {
    @Published var isLoggedIn:Bool = false
    
    func logIn(){
        isLoggedIn = true
    }
    
    func logOut() {
        isLoggedIn = false
    }
}
