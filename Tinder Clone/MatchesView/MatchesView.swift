//
//  MatchesView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/17/22.
//

import SwiftUI

struct MatchesView: View {
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    @State private var selectedTab: LikedTab = .likes
    
    enum LikedTab {
        case likes
        case topPicks
    }
    
    private var buttonText: String {
        if selectedTab == .likes {
            return "See who likes you"
        } else {
            return "Unlock top picks"
        }
    }
    
    private func buttonAction() {
        appState.showPurchaseScreen()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                
                HStack {
                    Spacer()
                    
                    Button {
                        selectedTab = .likes
                    } label: {
                        Text("\(userMng.matches.count) Likes")
                            .font(.system(size: 22, weight: .semibold))
                            .if(selectedTab == .topPicks) { tab in
                                tab
                                    .foregroundColor(.textPrimary)
                            }
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        selectedTab = .topPicks
                    } label: {
                        Text("\(userMng.topPicks.count) Top Picks")
                            .font(.system(size: 22, weight: .semibold))
                            .if(selectedTab == .likes) { tab in
                                tab
                                    .foregroundColor(.textPrimary)
                            }
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                }
                
                Divider()
                    .padding(.vertical, 14)
                
                if selectedTab == .likes {
                    LikesView()
                } else {
                    TopPicksView()
                }
                
                Spacer()
            }
            
            Button {
                buttonAction()
            } label: {
                Text(buttonText)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 37)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(30)
            }
            .buttonStyle(.plain)
            .padding(.bottom, 40)

        }
        .animation(.easeInOut, value: selectedTab)
        .animation(.easeInOut, value: buttonText)
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}
