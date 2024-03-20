//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by macOS on 20/03/2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    
    @State private var selectedOptions: DestinationSearchOptions = .location
    
    
    var body: some View {
        VStack {
            Button {
                withAnimation(){
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            VStack(alignment: .leading ){
                if selectedOptions == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
                
               
            }
            .padding()
            .frame(height: selectedOptions == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOptions = .location
            }
            //when
//            VStack {
//                HStack {
//                    Text("When")
//                        .foregroundStyle(.gray)
//
//                    Spacer()
//
//                    Text("Add dates")
//                }
//                .fontWeight(.semibold)
//                .font(.subheadline)
//            }
//            .padding()
//            .background(.white)
//            .clipShape(RoundedRectangle(cornerRadius: 12))
//            .padding()
//            .shadow(radius: 10)
            
            VStack {
                if selectedOptions == .dates {
                    Text("Show expanded view")
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
                    
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOptions = .dates
            }
           
            
            //who
            VStack {
                if selectedOptions == .dates {
                    Text("Show expanded view")
                } else {
                    CollapsedPickerView(title: "Who", description: "Ad dguests")
                }
                    
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOptions = .guests
            }
           
        }
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(show: .constant(false))
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
    }
}
