//
//  ProfileHeaderCountView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/3/24.
//

import SwiftUI

struct ProfileHeaderCountView: View{
    var body: some View {
        HStack {
            //post followers and following
            Button {
                //no operation - UI only
            } label: {
                Text("3\nPosts")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(.trailing,10)
            
            Button {
                //no operation - UI only
            } label: {
                Text("32\nFollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(.trailing,10)
            
            Button {
                //no operation - UI only
            } label: {
                Text("1789\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(.trailing,10)
            
        }
    }
}

struct ProfileHeaderCountView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderCountView()
            .preferredColorScheme(.dark)
    }
}
