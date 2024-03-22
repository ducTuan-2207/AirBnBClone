//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by macOS on 16/03/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.0285, longitude: 105.8542), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouseView()
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
            Divider()
            
            //listing amenitises
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(0 ..< 5) { feature in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width:32)
                        Text("wifi")
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
                        Text("$500")
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
        ListingDetailView()
    }
}
