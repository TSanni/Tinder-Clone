//
//  MessageListVM.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//
//VIEWMODEL

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreview: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        //When adding networking Handle networking to load messagePreviews from a server 
        self.messagePreview = MessagePreview.examples
    }
}
