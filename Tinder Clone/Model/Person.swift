//
//  Person.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation


struct Person: Hashable, Identifiable {
    
    let id = UUID().uuidString
    
    var name: String
    var imageURLS: [URL]
    var bio: String
    var age: Int
    
}


extension Person {
    static let example = Person(name: "Eren", imageURLS: [URL(string: "https://picsum.photos/400/303")!], bio: "The only way to win is to fight", age: 19)
    static let example2 = Person(name: "Mikasa", imageURLS: [URL(string: "https://picsum.photos/400/301")!], bio: "I'll follow Eren", age: 18)
    
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "Armin", imageURLS: [URL(string: "https://picsum.photos/400/300")!], bio: "Do you know where Annie is right now?", age: 19),
        Person(name: "Willy", imageURLS: [URL(string: "https://picsum.photos/400/304")!], bio: "I believe this world is my birthright just as it is yours", age: 30),
        Person(name: "Flock", imageURLS: [URL(string: "https://picsum.photos/400/302")!], bio: "I' going to save the new Eldian empire!", age: 18)
    ]
}

