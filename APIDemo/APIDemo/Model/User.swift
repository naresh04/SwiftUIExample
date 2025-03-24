//
//  User.swift
//  APIDemo
//
//  Created by naresh chouhan on 3/19/25.
//

import Foundation

struct User: Codable,Identifiable {
    let id:Int
    let name:String
    let email:String
}
