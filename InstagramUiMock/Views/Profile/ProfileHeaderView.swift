//
//  ProfileHeaderView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/3/24.
//

import SwiftUI

struct ProfileHeaderView: View{
    var body: some View {
        //avatar image counts
        VStack {
            HStack {
                Image("person3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90, alignment: .center)
                    .cornerRadius(50)
                VStack {
                    ProfileHeaderCountView()
                        .padding(.leading,30)
                }
            }
            //Profile name and bio
            ProfileNameBioView()
            
            //Edit profile button
            ProfileEditButtonsView()
            
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .preferredColorScheme(.dark)
    }
}
