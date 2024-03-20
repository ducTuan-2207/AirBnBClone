//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by macOS on 10/03/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchAndFilterBar()
                ScrollView {
                    //LazyVstack chỉ tải và render chúng khi cần thiết => tiết kiệm tài nguyên, cải thiện hiệu suất
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10 , id: \.self) { listinng in
                            NavigationLink(value: listinng){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                                
                        }
                        .padding()
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    }
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
