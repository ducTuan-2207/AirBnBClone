//
//  ListingView.swift
//  AirBnbClone
//
//  Created by macOS on 10/03/2024.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            //image
            Rectangle()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
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
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
