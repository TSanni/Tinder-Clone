//
//  TabBarButtonView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/15/22.
//

import SwiftUI


enum TabBarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}


struct TabBarButtonView: View {
    
    var type: TabBarButtonType
//    var action: () -> Void //must be last paramter for trailing closure
    
    @EnvironmentObject var appState: AppStateManager
    
    
    var body: some View {
        Button {
            appState.selectedTab = type
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .scaledToFit()
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundStyle(type == .star ? Color.yellow : Color.red)
                })
                .foregroundStyle(.gray.opacity(0.5))
        }
        .frame(height: 32)
    }
}


struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .message)
            .environmentObject(AppStateManager())
    }
}
