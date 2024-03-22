//
//  WishlistView.swift
//  AirBnbClone
//
//  Created by macOS on 21/03/2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Login in to view your wishlists")
                        .font(.subheadline)
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                Button {
                    print("wishlists")
                } label: {
                    Text("wishlists")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
