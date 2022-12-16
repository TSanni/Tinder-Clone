//
//  RoundedImage.swift
//  Tinder Clone
//
//  Created by Tomas Sanni on 12/16/22.
//

import SwiftUI
import Kingfisher

struct RoundedImage: View {
    var url: URL?
    
    var body: some View {
        KFImage(url)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(url: URL(string: "https://picsum.photos/400"))
    }
}
