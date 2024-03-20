//
//  ProfileView.swift
//  AirBnbClone
//
//  Created by macOS on 20/03/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("login in to start planning your next trip")
            
            Button {
                print("Login")
            } label: {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 48)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
