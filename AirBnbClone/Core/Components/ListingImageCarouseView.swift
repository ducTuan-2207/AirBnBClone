//
//  ListingImageCarouseView.swift
//  AirBnbClone
//
//  Created by macOS on 16/03/2024.
//

import SwiftUI

struct ListingImageCarouseView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageURL, id: \.self){ image in
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
        ListingImageCarouseView(listing: DeveloperPreview.shared.listing[0])
    }
}
