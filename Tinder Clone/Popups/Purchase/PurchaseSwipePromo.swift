//
//  PurchaseSwipePromo.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/19/22.
//

import SwiftUI

struct PurchaseSwipePromo: View {
    var body: some View {
        TabView {
            VStack(spacing: 10) {
                Image(systemName: "thermometer.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 75)
                
                Text("25 people already like you!")
                    .font(.system(size: 18, weight: .semibold))
                
                Text("Match with them instantly")
            }
            
            VStack(spacing: 10) {
                Image(systemName: "paperplane.circle.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 75)
                
                Text("25 people already like you!")
                    .font(.system(size: 18, weight: .semibold))
                
                Text("Match with them instantly")
            }
            
            VStack(spacing: 10) {
                Image(systemName: "calendar.badge.plus")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 75)
                
                Text("25 people already like you!")
                    .font(.system(size: 18, weight: .semibold))
                
                Text("Match with them instantly")
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct PurchaseSwipePromo_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseSwipePromo()
            .frame(height: UIScreen.main.bounds.height / 3)

    }
}
