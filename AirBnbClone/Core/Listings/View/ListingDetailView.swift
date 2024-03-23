//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by macOS on 16/03/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    let listing: Listing
       @State private var region: MKCoordinateRegion
       
    init(listing: Listing){
        self.listing = listing
        let centerCoordinate: CLLocationCoordinate2D
        if listing.city == "HungYen" {
            centerCoordinate = CLLocationCoordinate2D(latitude: 20.6464, longitude: 106.0511) // Hưng Yên coordinates
        } else {
            centerCoordinate = CLLocationCoordinate2D(latitude: 16.0544, longitude: 108.2022) // Đà Nẵng coordinates
        }
        self._region = State(initialValue: MKCoordinateRegion(center: centerCoordinate,
                                                               span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
    }


       @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouseView(listing: listing)
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }

            }
            VStack(alignment: .leading,spacing: 8 ) {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)")
                        Text("-")
                        Text("28 review")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .foregroundStyle(.black)
                    Text("\(listing.city), \(listing.state)")
                        .font(.caption)
                   
                }
                
                .frame(maxWidth: .infinity,alignment: .leading)
            }
            .padding(.leading)
            Divider()
            // host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire \(listing.type.description) hoster by \(listing.ownerName)")
                        .font(.headline)
//                        .frame(width: 250, alignment: .leading)
                    HStack(spacing: 2) {
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedroomms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds - ")
                        Text("\(listing.numberOfBathrooms) baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image(listing.ownerImageUrl)
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
                ForEach(listing.features ){ feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(feature.subtitlee)
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
                        ForEach(1...listing.numberOfBedroomms, id: \.self){ bedroom in
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
            Divider()
            
            //listing amenitises
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(listing.amenities) { amenity in
                    HStack {
                        Image(systemName: amenity.imageName)
                            .frame(width:32)
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
                
                Divider()
                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll be")
                        .font(.headline)
                    Map(coordinateRegion: $region)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
            }
            .toolbar(.hidden, for: .tabBar)
            
            .ignoresSafeArea()
            .padding(.bottom,64)
            
        }
        .overlay(
            VStack {
                Divider()
                    .padding(.bottom)
                HStack {
                    VStack(alignment: .leading) {
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("20-3-2024")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width:140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
                
            }
            .background(Color.white)
            .padding(.bottom, -10),
            alignment: .bottom
        )

    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(listing: DeveloperPreview.shared.listing[0])
    }
}
