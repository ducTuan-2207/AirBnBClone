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
                VStack(alignment: .leading, spacing: 4) {
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
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("main_avt")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
//                    .padding(.trailing)
                
            }
            .padding()
            Divider()
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2 ){ feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhost are experience, highly rated host who are commited to providing greate starts for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
//            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            //bedroom view
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1..<5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                    
                                Text("Bedroom\(bedroom)")
                                
                            }
                            .frame(width: 132, height: 100)
                            .overlay(){
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollBounceBehavior(.automatic)
            }
            .padding()
        }
    
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView()
    }
}
