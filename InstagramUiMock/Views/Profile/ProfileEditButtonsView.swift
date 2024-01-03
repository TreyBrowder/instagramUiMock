//
//  ProfileEditButtonsView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/3/24.
//

import SwiftUI

struct ProfileEditButtonsView: View {
    var body: some View {
        HStack {
            Button {
                //no action yet
            } label: {
                Text("Edit Profile")
                    .foregroundColor(Color(.label))
                    .frame(width: 170, height: 40, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
            }
            
            Button {
                //no action here - UI focus only
            } label: {
                Text("Share Profile")
                    .foregroundColor(Color(.label))
                    .frame(width: 170, height: 40, alignment: .center)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
            }
        }
    }
}

struct ProfileEditButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditButtonsView()
            .preferredColorScheme(.dark)
    }
}
