//
//  ProfileView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                RoundedImage(url: URL(string: "https://picsum.photos/400"))
                    .frame(height: 175)
                
                Button {
                    
                } label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(.white)
                        .clipShape(Circle())
                        .shadow(radius: 7)
                }
                .padding(.vertical, 10)
                .offset(x: -10)
                
            }
            
            Spacer().frame(height: 18)
            
            Text("Tomas, 26")
                .foregroundColor(.textTitle)
                .font(.system(size: 26, weight: .medium))
            
            Spacer().frame(height: 8)
            
            Text("iOS Developer")
            
            Spacer().frame(height: 22)
            
            HStack(alignment: .top) {
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("SETTINGS")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "camera.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .padding(22)
                            .background(.red)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("ADD MEDIA")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                    }
                }
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "shield.fill")
                            .foregroundColor(.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("SAFETY")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                    }
                }
                
                Spacer()
            }
            
            Spacer().frame(height: 14)
            
            HStack {
                Text("Tips to get more likes: Don't take too many selfies. Have pictures of yourself at different places")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .heavy))
                        .foregroundColor(.pink)
                        .padding(6)
                }
                .background(.white)
                .clipShape(Circle())

            }
            .padding()
            .background(.pink)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            
            
            ZStack {
                Color.gray.opacity(0.15)
                ProfileSwipePromo {
                    
                }
            }
            .padding(.top, 18)
            
            
//            Spacer()
        }
        .foregroundColor(Color.black.opacity(0.75))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .background(Color.defaultBackground)
        
    }
}
