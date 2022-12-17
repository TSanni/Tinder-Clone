//
//  ContentView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var mng: AppStateManager = AppStateManager()
    
    var body: some View {
        MainView()
            .environmentObject(mng)
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
