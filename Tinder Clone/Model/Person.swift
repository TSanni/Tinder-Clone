//
//  Person.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation
import SwiftUI

struct Person: Hashable, Identifiable {
    
    let id = UUID().uuidString
    
    var name: String
    var imageURLS: [URL]
    var bio: String
    var distance: Int
    
    var bioLong: String
    
    var age: Int
    
    //Used for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
}


extension Person {
    
    static let example = Person(
        name: "Eren",
        imageURLS: [
            URL(string: "https://picsum.photos/400/303")!,
            URL(string: "https://picsum.photos/400/304")!,
            URL(string: "https://picsum.photos/400/305")!,
            URL(string: "https://picsum.photos/400/306")!
        ],
        bio: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight",
        distance: 20,
        bioLong: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight",
        age: 19
    )
    
    static let example2 = Person(name: "Mikasa", imageURLS: [URL(string: "https://picsum.photos/400/301")!], bio: "I'll follow Eren", distance: 25, bioLong: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight", age: 18)
    
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        
        Person(name: "Armin",
               imageURLS: [
                URL(string: "https://picsum.photos/400/300")!,
                URL(string: "https://picsum.photos/400/301")!,
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
               ],
               bio: "Do you know where Annie is right now?",
               distance: 30,
               bioLong: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight",
               age: 19
              ),
        
        Person(name: "Willy",    imageURLS: [
            URL(string: "https://picsum.photos/400/304")!,
            URL(string: "https://picsum.photos/400/305")!,
            URL(string: "https://picsum.photos/400/306")!,
            URL(string: "https://picsum.photos/400/307")!,
           ], bio: "I believe this world is my birthright just as it is yours", distance: 40, bioLong: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight", age: 30),
        
        Person(name: "Flock",    imageURLS: [
            URL(string: "https://picsum.photos/400/308")!,
            URL(string: "https://picsum.photos/400/309")!,
            URL(string: "https://picsum.photos/400/310")!,
            URL(string: "https://picsum.photos/400/311")!,
           ], bio: "I' going to save the new Eldian empire!", distance: 50, bioLong: "The only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fightThe only way to win is to fight", age: 18)
    ]
}

