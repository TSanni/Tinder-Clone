//
//  CardImageScroller.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/20/22.
//

import SwiftUI
import Kingfisher


struct CardImageScroller: View {
    
    var person: Person
    
    @State private var imageIndex = 0
    
    @Binding var fullscreenMode: Bool
    
    func updateImageIndex(addition: Bool) {
//        let newIndex: Int
        
        if addition {
            imageIndex = imageIndex + 1
        } else {
            imageIndex = imageIndex - 1
        }
        
        //Prevent index from going out of bounds
        if imageIndex < 0 {
            imageIndex = 0
        }
        
        if imageIndex > person.imageURLS.count - 1 {
            imageIndex = person.imageURLS.count - 1
        }
        
        //use this to prevent scrolling into negative index
        //or out of bounds
//        imageIndex = min(max(0, newIndex), person.imageURLS.count - 1)
        
        
    }
    
    let screenCutoff = (UIScreen.main.bounds.width / 2) * 0.4
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ZStack {
                    KFImage(person.imageURLS[imageIndex])
                        .placeholder { //placeholder modifier comes from KingFisher framework
                            Color.white
                        }
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: geo.size.height)
                        .clipped()
                    
                    VStack {
                        HStack {
                            Text("❤️❤️❤️")
                                .font(.largeTitle)
                                .frame(width: 150)
                                .opacity(Double(person.x / screenCutoff) - 1)
                            Spacer()
                            Text("🤢🤢🤢")
                                .font(.largeTitle)
                                .frame(width: 150)
                                .opacity(Double(person.x / screenCutoff * -1 - 1))


                        }
                        
                        Spacer()
                    }
                    
                    HStack {
                        Rectangle()
                            .onTapGesture {
                                updateImageIndex(addition: false)
                            }
                        
                        Rectangle()
                            .onTapGesture {
                                updateImageIndex(addition: true)
                            }
                    }
                    .foregroundColor(.white.opacity(0.001))
                }
                
                VStack {
                    HStack {
                        ForEach(0..<person.imageURLS.count) { imageIndex in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 4)
                                .foregroundColor(self.imageIndex == imageIndex ? Color.white : Color.gray.opacity(0.5))
                        }
                    }
                    .padding(.top, 6)
                    .padding(.horizontal, fullscreenMode ? 0 : 12)
                    
                    Spacer()
                    
                    if !fullscreenMode {
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(person.name)
                                        .font(.system(size: 32, weight: .heavy))
                                    
                                    Text(String(person.age))
                                        .font(.system(size: 28, weight: .light))
                                }
                                
                                Text(person.bio)
                                    .font(.system(size: 18, weight: .medium))
                                    .lineLimit(2)
                            }
                            
                            Spacer()
                            
                            Button {
                               fullscreenMode = true
                            } label: {
                                Image(systemName: "info.circle.fill")
                                    .font(.system(size: 26, weight: .medium))
                            }

                            
                            
                        }
                        .padding(16)
                    }
                }
                .foregroundColor(.white)
            }
            .cornerRadius(6)
            .shadow(radius: 5)
        }
    }
}

struct CardImageScroller_Previews: PreviewProvider {
    static var previews: some View {
        CardImageScroller(person: Person.example, fullscreenMode: .constant(true))
    }
}
