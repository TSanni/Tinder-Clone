//
//  TopPicksView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/17/22.
//

import SwiftUI

struct TopPicksView: View {
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    private var user: User {
        return userMng.currentUser
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            if !user.goldSubscriber {
                Text("Upgrade to Tinder Gold for more Top Picks!")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundColor(.textTitle)
                    .font(.system(size: 17, weight: .medium))
                    .padding(.horizontal, 40)
                    .padding(.vertical, 24)
            }
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 20, pinnedViews: []) {
                ForEach(userMng.matches) { person in
                    PersonSquare(person: person, blur: false)
                        .frame(height: 240)
                        .onTapGesture {
                            personTapped(person)
                        }
                }
            }
            .padding(.horizontal, 6)
            
        }
    }
    
    func personTapped(_ person: Person) {
        if user.goldSubscriber {
            appState.showPersonsProfile(person)
        } else {
            appState.showPurchaseScreen()
        }
    }
}

struct TopPicksView_Previews: PreviewProvider {
    static var previews: some View {
        TopPicksView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}

