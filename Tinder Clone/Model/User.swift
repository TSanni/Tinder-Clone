//
//  User.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/17/22.
//

import Foundation


struct User {
    var name: String
    var age: Int
    var jobTitle: String
    
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    
    var imageURLS: [URL] = []
}


extension User {
    static let example = User(name: "Zeke", age: 25, jobTitle: "Beast Titan (War Chief)", goldSubscriber: false, profileTip: "Tips to get more likes: Don't take too many selfies. Have pictures of yourself at different places", imageURLS: [URL(string: "https://picsum.photos/400/303")!])
}
