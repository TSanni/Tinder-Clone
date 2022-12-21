//
//  MainView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/15/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var appState: AppStateManager
    
    func correctViewForState() -> some View {
        //Use AnyView to fix error when returning different types of Views such as Text and Color
        switch appState.selectedTab {
        case .fire:
            let view = HomeView()
            return AnyView(view)
        case .star:
            let view = MatchesView()
            return AnyView(view)
        case .message:
            let view = MessageListView()
            return AnyView(view)
        case .profile:
            let view = ProfileView()
            return AnyView(view)
        }
    }
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray6)
                    .opacity(0.35)
                    .edgesIgnoringSafeArea(.vertical)
                
                VStack {
                    HStack {
                        
                        Spacer()
                        
                        TabBarButtonView(type: .fire)
                        
                        Spacer()

                        TabBarButtonView(type: .star)
                        
                        Spacer()

                        TabBarButtonView(type: .message)
                        
                        Spacer()

                        TabBarButtonView(type: .profile)
                        
                        Spacer()

                    }
                    .frame(height: 100)
                    .padding(.top, 30)//End of HStack
                    
                    correctViewForState()
                    
                    Spacer()
                    
                }
                .edgesIgnoringSafeArea(.vertical)//End of VStack
                
                if appState.showPurchasePopup {
                    PurchasePopup(isVisible: $appState.showPurchasePopup)
                        .animation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.5))
                        .transition(.offset(y: 800))
                }
            }
            .modifier(HideNavigationView())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AppStateManager())
            .environmentObject(UserManager())
    }
}

