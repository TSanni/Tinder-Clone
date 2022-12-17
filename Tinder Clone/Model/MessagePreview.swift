//
//  MessageThread.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation

struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Here me, subjects of Ymir. My name is Eren Yeagar. I'm addressing my fellow subjects of Ymir, speaking to you directly through the power of the founder.")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "Here me, subjects of Ymir. My name is Eren Yeagar. I'm addressing my fellow subjects of Ymir, speaking to you directly through the power of the founder."),
        MessagePreview(person: Person.example2, lastMessage: "All the walls on the island of Paradis have crumbled to the ground, and legions of titans buried within have begun their march")
    
    ]
}
