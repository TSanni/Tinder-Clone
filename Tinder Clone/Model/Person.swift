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
    
}


extension Person {
    static let example = Person(name: "Eren", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
}
