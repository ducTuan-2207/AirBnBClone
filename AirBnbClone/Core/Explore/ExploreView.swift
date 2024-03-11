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
            ScrollView {
                //LazyVstack chỉ tải và render chúng khi cần thiết => tiết kiệm tài nguyên, cải thiện hiệu suất
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10 , id: \.self) { listinng in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
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
