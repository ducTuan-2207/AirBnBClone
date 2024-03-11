//
//  SearchAndFilterBar.swift
//  AirBnbClone
//
//  Created by macOS on 11/03/2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2){
                Text("Where to")
                    .fontWeight(.semibold)
                    .font(.footnote)
                Text("Any Where - Any Week - Any Guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
        }
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
