//
//  ProfileView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 12/30/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            
            //gridview: post
            ScrollView {
                ProfileHeaderView()
                    .padding()

                ProfilePostView()
            .navigationBarTitle("iOS_SwiftUi3", displayMode: .inline)
            }
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}

