//
//  Person.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation


struct Person: Hashable {
    var name: String
    var imageURLS: [URL]
    var bio: String
    
}


extension Person {
    static let example = Person(name: "Eren", imageURLS: [URL(string: "https://picsum.photos/400/300")!], bio: "The only way to win is to fight")
    static let example2 = Person(name: "Mikasa", imageURLS: [URL(string: "https://picsum.photos/400/301")!], bio: "I'll follow Eren")
}
