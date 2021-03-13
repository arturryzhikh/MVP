//
//  Person.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import Foundation

struct Comment: Codable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
   
}
