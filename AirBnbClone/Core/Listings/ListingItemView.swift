//
//  ListingView.swift
//  AirBnbClone
//
//  Created by macOS on 10/03/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            //image
            TabView {
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            //listing detail
            //HStack sắp xếp item theo chiều ngang
            HStack{
                //detail
                //VStack sắp xếp item theo chiều dọc
                // .leadinng là một giá trị của enum alignment => các giá trị item sẽ được căn chỉnh theo lề trái
                VStack(alignment: .leading) {
                    Text("Chang hâm , HaNoi")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$999")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer() // tạo một khoảng trống
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.99")
                }
            }
//            .background(.red)
            .font(.footnote)
        }
//        .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
