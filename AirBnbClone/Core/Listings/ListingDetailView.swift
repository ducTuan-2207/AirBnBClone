//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by macOS on 16/03/2024.
//

import SwiftUI

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    var body: some View {
        ScrollView {
            ListingImageCarouseView()
                .frame(height: 270)
            VStack(alignment: .leading,spacing: 8 ) {
                Text("Miani Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.99")
                        Text("-")
                        Text("28 review")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .foregroundStyle(.black)
                    Text("Miani, Floria")
                        .font(.caption)
                   
                }
                
                .frame(maxWidth: .infinity,alignment: .leading)
            }
            .padding(.leading)
            Divider()
            // host info view
            HStack {
                VStack(alignment: .leading) {
                    Text("Entire villa hoster by Duc Tuan")
                        .font(.headline)
//                        .frame(width: 250, alignment: .leading)
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds - ")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                Spacer()
                
                Image("main_avt")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.trailing)
                
            }
            .padding(.leading)
            
        }
    
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView()
    }
}
