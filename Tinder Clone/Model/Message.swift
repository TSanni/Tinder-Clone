//
//  Message.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation

struct Message: Hashable {
    var content: String
    var person: Person? = nil
    
    //returns true if Person is nil
    var fromCurrentUser: Bool {
        return person == nil
    }
}


extension Message {
    static let exampleSent = Message(content: "The titans of the walls, will continue their march..")
    static let exampleReceived = Message(content: "Stay confined to your walls", person: Person.example)
}
