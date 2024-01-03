//
//  ProfileNameBioView.swift
//  InstagramUiMock
//
//  Created by Trey Browder on 1/3/24.
//

import SwiftUI

struct ProfileNameBioView: View {
    var body: some View {
        HStack{
            Text("John Appleseed")
                .multilineTextAlignment(.leading)
                .padding(.leading,20)
            Spacer()
        }
        
        HStack{
            Text("SwiftUI | Developer | Hacker | Gym Life")
                .multilineTextAlignment(.leading)
                .padding(.leading,20)
            Spacer()
        }
    }
}

struct ProfileNameBioView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNameBioView()
            .preferredColorScheme(.dark)
    }
}
