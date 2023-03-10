//
//  PurchaseOptionView.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/19/22.
//

import SwiftUI

struct PurchaseOptionView: View {
    
    var sub: Subscription
    var isSelected: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Text("\(sub.month)")
                .font(.system(size: 44, weight: .light))
            
            Spacer().frame(height: 2)
            
            Text("month\(sub.month > 1 ? "s" : "")")
                .if(isSelected) { text in
                    text
                        .font(.system(size: 14, weight: .bold))
                }
            
            Spacer().frame(height: 2)
            
            Text("$\(String(format: "%.2f", sub.monthlyCost))/mo")
                .foregroundColor(.textPrimary)
            
            Spacer().frame(height: 10)
            
            if sub.savePercent != nil {
                Text("Save \(sub.savePercent ?? 0)%")
                    .foregroundColor(.yellow)
                    .font(.system(size: 16, weight: .heavy))
                    .frame(height: 22)
            } else {
                Spacer().frame(height: 22)

            }
            
            Spacer().frame(height: 12)
            
            Text("$\(String(format: "%.2f", sub.totalCost))")
                .font(.system(size: 20, weight: .bold))



        }
        .padding(.horizontal, 12)
        .padding(.vertical, 18)
        .if(!isSelected) {
            $0.foregroundColor(.textPrimary)
        }
        .if(isSelected && sub.tagLine == .none) { view in
            view
                .overlay {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.yellow, lineWidth: 1.5)
                }
        }
        .if(isSelected && sub.tagLine != .none) { view in
            view
                .overlay {
                    ZStack(alignment: .top) {
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(height: 20)
                            .cornerRadius(10, corners: [.topLeft, .topRight])
                        
                        Text(sub.tagLine.rawValue)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .padding(.top, 2)
                            .padding(.horizontal, 6)
                            .minimumScaleFactor(0.1)
                        
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color.yellow, lineWidth: 1.5)
                    }
                }
        }
        
        
    }
}

struct PurchaseOptionView_Previews: PreviewProvider {
    static var previews: some View {
        
        HStack {
            PurchaseOptionView(sub: Subscription.example1, isSelected: false)
            PurchaseOptionView(sub: Subscription.example2, isSelected: true)
            PurchaseOptionView(sub: Subscription.example3, isSelected: false)
        }
        
//        let isSelected = true
//        PurchaseOptionView(sub: Subscription.example1, isSelected: isSelected)
//        PurchaseOptionView(sub: Subscription.example2, isSelected: true)
//        PurchaseOptionView(sub: Subscription.example2, isSelected: false)
//        PurchaseOptionView(sub: Subscription.example3, isSelected: isSelected)
    }
}
