//
//  Extensions.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/15/22.
//

import Foundation
import SwiftUI


extension View {
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
