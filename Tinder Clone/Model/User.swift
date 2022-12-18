//
//  User.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/17/22.
//

import Foundation


struct User {
    var name: String
    
    var goldSubscriber: Bool = false
}


extension User {
    static let example = User(name: "Zeke", goldSubscriber: false)
}
