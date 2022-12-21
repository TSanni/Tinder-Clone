//
//  CardStack.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/20/22.
//

import SwiftUI

struct CardStack: View {
    
    var people: [Person]
    let screen = UIScreen.main.bounds
    
    @State private var fullscreenMode: Bool = false
    
    var body: some View {
        ZStack {
            ForEach(people) { person in
                CardView(person: person, fullscreenMode: $fullscreenMode)
            }
        }
        .frame(width: screen.width, height: fullscreenMode ? screen.height : 500)
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack(people: Person.examples)
    }
}
