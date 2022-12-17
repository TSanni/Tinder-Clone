//
//  ChatManager.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import Foundation
import Combine
import UIKit

class ChatManager: ObservableObject {
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
    
    var cancellable: AnyCancellable? = nil
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        loadMessages()
        setUpPublishers()
    }
    
    public func sendMessage(_ message: Message) {
        //Networking calls
        messages.append(message)
        //if networking failure, then show an error with some retry options
    }
    
    //We have two publishers below.
    //One will receive a value of true whenever the keyboard is about to show
    private let keyboardWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map({ _ in true })
    //The other will receive false when the keyboard is about to hid
    private let keyboardWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map({ _ in false })
    
    private func setUpPublishers() {
        cancellable = Publishers.Merge(keyboardWillShow, keyboardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self)
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
    }
    
    deinit {
        cancellable?.cancel()
    }
}
