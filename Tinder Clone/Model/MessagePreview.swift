//
//  MessageThread.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation

struct MessagePreview {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hi there")
}
