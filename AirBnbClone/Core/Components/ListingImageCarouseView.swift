//
//  ListingImageCarouseView.swift
//  AirBnbClone
//
//  Created by macOS on 16/03/2024.
//

import SwiftUI

struct ListingImageCarouseView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    var body: some View {
        TabView {
            ForEach(images, id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
//            .frame(height: 320)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
    }
}

struct ListingImageCarouseView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouseView()
    }
}
