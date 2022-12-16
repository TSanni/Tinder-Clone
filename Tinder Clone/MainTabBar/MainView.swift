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
            let view = Text("Fire")
            return AnyView(view)
        case .star:
            let view = Text("Star")
            return AnyView(view)
        case .message:
            let view = Text("Message")
            return AnyView(view)
        case .profile:
            let view = ProfileView()
            return AnyView(view)
        }
    }
    
    
    var body: some View {
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
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AppStateManager())
    }
}

