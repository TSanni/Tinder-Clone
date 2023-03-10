//
//  PersonSquare.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/17/22.
//

import SwiftUI
import Kingfisher

struct PersonSquare: View {
    var person: Person
    var blur: Bool
    
    
    var body: some View {
        //Used geometry reader so that the PARENT VIEW can set the frame
        GeometryReader { geo in
            ZStack(alignment: .bottomLeading) {
                KFImage(person.imageURLS.first)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .if(blur) { image in
                        image.blur(radius: 25)
                    }
                
                Text("\(person.name), \(person.age)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                    .if(blur) { text in
                        text.redacted(reason: .placeholder)
                    }
                
            }
            .cornerRadius(17)
        }
        
    }
}

struct PersonSquare_Previews: PreviewProvider {
    static var previews: some View {
        PersonSquare(person: Person.example, blur: false)
            .frame(width: 125, height: 125)
    }
}
