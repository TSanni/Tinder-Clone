//
//  MessageListView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import SwiftUI

struct MessageListView: View {
    @ObservedObject var vm: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    @State private var isEditing: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    TextField("Search Matches", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color.textfieldBG)
                        .cornerRadius(8)
                        .overlay {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.textPrimary)
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.leading, 4)
                                
                                Spacer()
                                
                            }
                        }
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            isEditing = true
                        }
    //                    .animation(.easeIn(duration: 0.25), value: isEditing)

                    
                    
                    if isEditing {
                        Button {
                            isEditing = false
                            searchText = ""
                            self.endEditing(true)
                        } label: {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))

                    }
                    
                }
                .animation(.easeIn(duration: 0.25), value: isEditing)

                
                Spacer().frame(height: 14)
                
                ZStack {
                    VStack {
                        ForEach(vm.messagePreview.filter({ item in
                            
                            searchText.isEmpty ? true : displayPreview(item)
                            
                        }), id: \.self) { preview in
                            
                            NavigationLink {
                                ChatView(person: preview.person)
                            } label: {
                                MessageRowView(preview: preview)
                            }
                            .buttonStyle(.plain)
                            .animation(.easeIn(duration: 0.25))
                            .transition(.slide)


                        }
                    }
                    if isEditing && searchText.isEmpty {
                        Color.white.opacity(0.5)
                    }
                }

                
                Spacer()
            }
        }
        .modifier(HideNavigationView())
        
    }
    
    func displayPreview(_ preview: MessagePreview) -> Bool {
        //person name
        if preview.person.name.contains(searchText) { return true }
        //last message sent
        if preview.lastMessage.contains(searchText) { return true }
        //person bio
        if preview.person.bio.contains(searchText) { return true}
        
        return false
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MessageListView()
        }
    }
}
