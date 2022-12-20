//
//  PurchasePopup.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/18/22.
//

import SwiftUI

struct PurchasePopup: View {
    
    @Binding var isVisible: Bool
    @State private var seletedIndex: Int = 1
    
    let screen = UIScreen.main.bounds
    
    let subscriptions: [Subscription] = [
        Subscription.example1,
        Subscription.example2,
        Subscription.example3
    ]
    
    func processPayment() {
        let product = subscriptions[seletedIndex]
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: 40)
                
                VStack {
                    Text("Get Tinder Gold")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    PurchaseSwipePromo()
                        .frame(height: geo.size.height / 3)
                        .padding(.top, -35)
                        
                    
                    HStack {
                        ForEach(subscriptions.indices) { subIndex in
                            let sub = subscriptions[subIndex]
                            
                            PurchaseOptionView(sub: sub, isSelected: subIndex == seletedIndex)
                                .onTapGesture {
                                    seletedIndex = subIndex
                                }
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        processPayment()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            Text("CONTINUE")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    }
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    
                    Button {
                        isVisible = false
                    } label: {
                        Text("NO THANKS")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    }
                    .padding(.vertical, 18)
                    
                    
                    
                    
                    Spacer()
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Text("Recurring billing, cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                    Text("Example text for tinder that may or may not be typed out randomly in an effort to take up some space to test this view. Futhermore, we do not have any right to collect any more data or speak about anything else on this topic ")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                
                Spacer()
                
            }
            .background {
                Color.black.edgesIgnoringSafeArea(.all)
            }
        }
        .frame(height: screen.height)
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        PurchasePopup(isVisible: .constant(true))
        
    }
}
